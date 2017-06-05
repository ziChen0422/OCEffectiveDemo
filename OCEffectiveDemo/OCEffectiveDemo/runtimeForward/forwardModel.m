//
//  forwardModel.m
//  OCEffectiveDemo
//
//  Created by zichen0422 on 2017/6/5.
//  Copyright © 2017年 zichen0422. All rights reserved.
//

#import "forwardModel.h"
#import <objc/runtime.h>
#import <MBProgressHUD/MBProgressHUD.h>

@class messageforword;

@implementation forwardModel

void testforwardIMP(id self, SEL _cmd)
{
    NSLog(@"success, testforwordIMP");
}

- (void)testforwardMessage:(NSString *)msg
{
    NSLog(@"success, testforwardMessage %@", msg);
}

+(void)testforwardClass
{
    NSLog(@"success, testforwardClass");
}

#pragma mark - /*** 测试消息转发 ***/
+(BOOL)resolveClassMethod:(SEL)sel
{
    if (sel == @selector(classMessageHello))
    {
        // 获取元类
        Class metaClass = objc_getMetaClass("forwardModel");
        BOOL result = class_addMethod(metaClass, sel, class_getMethodImplementation(metaClass, @selector(testforwardClass)), "v@:");
        NSLog(@"classMessageHello %@", (result == YES)? @"yes":@"no");
        return result;
    }
    //return [class_getSuperclass(self) resolveClassMethod:sel];
    return [super resolveClassMethod:sel];
}

//first step
+ (BOOL)resolveInstanceMethod:(SEL)sel
{
    //NSLog(@"resolveInstanceMethod --- %@", NSStringFromSelector(sel));
    if (sel == @selector(testObjcforward)) {
        class_addMethod([self class], sel, (IMP)testforwardIMP, "v@:");
        return YES;
    }
    if (sel == @selector(testforward:)) {
        class_addMethod([self class], sel, class_getMethodImplementation([self class], @selector(testforwardMessage:)), "v@:@");
        return YES;
    }
    
    return [super resolveInstanceMethod:sel];
}

// second step
- (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector
{
    NSMethodSignature *methodSig = [super methodSignatureForSelector:aSelector];
    if (!methodSig) {
        if ([messageforword instancesRespondToSelector:aSelector]) {
            methodSig = [messageforword instanceMethodSignatureForSelector:aSelector];
        }
    }
    return methodSig;
}

- (void)forwardInvocation:(NSInvocation *)anInvocation
{
    messageforword *forword = [messageforword new];
    if ([forword respondsToSelector:anInvocation.selector]) {
        [anInvocation invokeWithTarget:forword];
    }
}

@end


@implementation messageforword

- (void)messageHello
{
    NSLog(@"success, message say hello");
}

@end
