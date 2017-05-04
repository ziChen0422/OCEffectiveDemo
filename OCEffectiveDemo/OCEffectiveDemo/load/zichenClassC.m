//
//  zichenClassC.m
//  OCEffectiveDemo
//
//  Created by zichen0422 on 2017/5/4.
//  Copyright © 2017年 zichen0422. All rights reserved.
//

#import "zichenClassC.h"

@implementation zichenClassC

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"zichenClassC init");
    }
    return self;
}

+ (void)load
{
    NSLog(@"zichenClassC load");
}

/**
 *  + (void)initialize,
 *  如果超类实现了initialize,子类没有
 *  父类也会调用initialize
 */
+ (void)initialize
{
    //NSLog(@"zichenClassC initialize");
    NSLog(@"--- %@ initialize", self);
    
    if (self == [zichenClassC class]) {
        NSLog(@"zichen class C");
    }
}

@end
