//
//  zichenClassA.m
//  Example
//
//  Created by zichen0422 on 2017/5/3.
//  Copyright © 2017年 zichen0422. All rights reserved.
//

#import "zichenClassA.h"

@implementation zichenClassA

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"class A init");
    }
    return self;
}

+ (void)load
{
    NSLog(@"class A load");
}

+ (void)initialize
{
    NSLog(@"class A initialize");
}

@end