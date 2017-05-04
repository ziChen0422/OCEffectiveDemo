//
//  TimerHandle.h
//  OCEffectiveDemo
//
//  Created by zichen0422 on 2017/5/4.
//  Copyright © 2017年 zichen0422. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TimerHandle : NSObject

- (void)startPolling;   //开启定时器
- (void)stopPolling;    //停止定时器

- (void)startWithTimerval:(NSTimeInterval)interval repeats:(BOOL)repeats block:(void (^)(void))block;

@end
