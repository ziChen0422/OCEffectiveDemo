//
//  zichenClassB+zichen.m
//  Example
//
//  Created by zichen0422 on 2017/5/3.
//  Copyright © 2017年 zichen0422. All rights reserved.
//

#import "zichenClassB+zichen.h"

@implementation zichenClassB (zichen)

+ (void)load
{
    NSLog(@"zichenClassB category load");
}

+ (void)initialize
{
    NSLog(@"zichenClassB category initialize");
}

@end
