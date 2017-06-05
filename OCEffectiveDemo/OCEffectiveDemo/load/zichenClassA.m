//
//  zichenClassA.m
//  Example
//
//  Created by zichen0422 on 2017/5/3.
//  Copyright © 2017年 zichen0422. All rights reserved.
//

#import "zichenClassA.h"

static NSMutableArray *_nArr;

@interface zichenClassA ()

@end

@implementation zichenClassA

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"zichenClassA init");
        if (!_nArr) {
            _nArr = [NSMutableArray new];
            NSLog(@"init Arr");
        }
    }
    return self;
}

/**
 *  尽量在load 方法中,精简方法,不要做等待锁,加锁的动作,减少阻塞的操作
 *  +(void)load, 在执行的时候会阻塞.
 */
+ (void)load
{
    NSLog(@"zichenClassA load");
}

/**
 *  +(void)initialize, 会在程序首次使用的时候调用一次, 这是系统调用的, 不可以手动代码调用此方法
 *  线程安全的
 *  此方法只应该设置内部数据, 不应该调用其他方法.
 */
+ (void)initialize
{
    NSLog(@"zichenClassA initialize");
    if (!_nArr) {
        _nArr = [NSMutableArray new];
        NSLog(@"initialize Arr");
    }
}

+ (void)zichenTest
{
    NSLog(@"zichen test");
    if (!_nArr) {
        _nArr = [NSMutableArray new];
        NSLog(@"zichenTest Arr");
    }
}

@end
