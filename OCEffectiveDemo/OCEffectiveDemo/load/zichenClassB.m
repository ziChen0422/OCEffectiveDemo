//
//  zichenClassB.m
//  Example
//
//  Created by zichen0422 on 2017/5/3.
//  Copyright © 2017年 zichen0422. All rights reserved.
//

#import "zichenClassB.h"

@implementation zichenClassB

/**
 *  +(void)load, +(void)initialize
 *  如果在分类中实现的话,会调用分类的,如下两个不输出.
 */
- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"zichenClassB init");
    }
    return self;
}

+ (void)load
{
    NSLog(@"zichenClassB load");
}

+ (void)initialize
{
    NSLog(@"zichenClassB initialize");
}

@end
