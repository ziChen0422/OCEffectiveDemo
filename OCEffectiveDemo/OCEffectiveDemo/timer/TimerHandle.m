//
//  TimerHandle.m
//  OCEffectiveDemo
//
//  Created by zichen0422 on 2017/5/4.
//  Copyright © 2017年 zichen0422. All rights reserved.
//

#import "TimerHandle.h"
#import "NSTimer+zichen.h"

@interface TimerHandle ()

@property (nonatomic, strong) NSTimer *timer;
@property (nonatomic, copy) void (^timerBlock)(void);


@end

@implementation TimerHandle

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"init");
    }
    return self;
}

- (void)dealloc
{
    NSLog(@"dealloc");
    [_timer invalidate];
    _timer = nil;
}

- (void)stopPolling
{
    NSLog(@"stopPolling--");
    [_timer invalidate];
    _timer = nil;
}

- (void)startPolling
{
    NSLog(@"startPolling--");
    
    /**
     *  NSTimer引用了self. 会产生保留环(循环引用).
     */
    
    // --- 这种方式解决了保留环的问题,
    __weak TimerHandle *weakSelf = self;
    _timer = [NSTimer zichen_scheduledTimerWithTimeInterval:3.0 repeats:YES block:^{
        TimerHandle *strongSelf = weakSelf;
        [strongSelf dosomeThing];
    }];
    
    // 以下两种方式都会存在保留环的问题。
//    _timer = [NSTimer scheduledTimerWithTimeInterval:3.0 target:self selector:@selector(dosomeThing) userInfo:nil repeats:YES];
    // scheduledTimerWithTimeInterval, 会自动启动
    // timerWithTimeInterval 启动的话,添加到runloop之后, 用firedate启动定时器
//    _timer = [NSTimer timerWithTimeInterval:3.0 target:self selector:@selector(dosomeThing) userInfo:nil repeats:YES];
//    [[NSRunLoop currentRunLoop] addTimer:_timer forMode:NSDefaultRunLoopMode];
//    [_timer fireDate];
    
    /**
     *  定时器暂停与继续的简要方法
     */
//    [_timer setFireDate:[NSDate date]];   //继续。
//    [_timer setFireDate:[NSDate distantPast]];    //开启
//    [_timer setFireDate:[NSDate distantFuture]];  //暂停
}

- (void)startWithTimerval:(NSTimeInterval)interval repeats:(BOOL)repeats block:(void (^)(void))block
{
    _timerBlock = block;
    
    // --- 这种方式解决了保留环的问题
    __weak TimerHandle *weakSelf = self;
    _timer = [NSTimer zichen_scheduledTimerWithTimeInterval:interval repeats:repeats block:^{
        TimerHandle *strongSelf = weakSelf;
        [strongSelf dosomeThing];
    }];
}

- (void)dosomeThing
{
    //NSLog(@"%s -- %@", __FUNCTION__ , [NSDate date]);
    if (self.timerBlock) {
        self.timerBlock();
    }
}

@end
