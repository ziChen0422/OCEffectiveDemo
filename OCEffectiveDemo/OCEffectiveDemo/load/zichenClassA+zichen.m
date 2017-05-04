//
//  zichenClassA+zichen.m
//  OCEffectiveDemo
//
//  Created by zichen0422 on 2017/5/4.
//  Copyright © 2017年 zichen0422. All rights reserved.
//

#import "zichenClassA+zichen.h"

@implementation zichenClassA (zichen)

+ (void)load
{
    NSLog(@"zichenClassA category load");
}

+ (void)initialize
{
    NSLog(@"zichenClassA category initialize");
}

@end
