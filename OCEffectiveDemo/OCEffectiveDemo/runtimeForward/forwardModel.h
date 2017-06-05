//
//  forwardModel.h
//  OCEffectiveDemo
//
//  Created by zichen0422 on 2017/6/5.
//  Copyright © 2017年 zichen0422. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface forwardModel : NSObject

// 测试消息转发
- (void)testObjcforward;
- (void)testforward:(NSString *)msg;
- (void)messageHello;
+ (void)classMessageHello;

@end


// 测试消息转发
@interface messageforword : NSObject

- (void)messageHello;

@end
