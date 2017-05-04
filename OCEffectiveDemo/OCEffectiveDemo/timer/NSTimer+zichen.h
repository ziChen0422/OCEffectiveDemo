//
//  NSTimer+zichen.h
//  OCEffectiveDemo
//
//  Created by zichen0422 on 2017/5/4.
//  Copyright © 2017年 zichen0422. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSTimer (zichen)

+ (NSTimer * _Nullable)zichen_scheduledTimerWithTimeInterval:(NSTimeInterval)interval repeats:(BOOL)repeats block:(void (^ _Nullable)(void))block;

@end
