//
//  NSTimer+zichen.m
//  OCEffectiveDemo
//
//  Created by zichen0422 on 2017/5/4.
//  Copyright © 2017年 zichen0422. All rights reserved.
//

#import "NSTimer+zichen.h"

@implementation NSTimer (zichen)

+ (NSTimer *)zichen_scheduledTimerWithTimeInterval:(NSTimeInterval)interval repeats:(BOOL)repeats block:(void (^)(void))block
{
    return [self scheduledTimerWithTimeInterval:interval
                                         target:self
                                       selector:@selector(zichen_blockInvoke:)
                                       userInfo:[block copy]
                                        repeats:repeats];
}

+ (void)zichen_blockInvoke:(NSTimer *)timer
{
    //NSLog(@"zichen_blockInvoke ");
    void (^block)(void) = timer.userInfo;
    if (block) {
        block();
    }
}

@end
