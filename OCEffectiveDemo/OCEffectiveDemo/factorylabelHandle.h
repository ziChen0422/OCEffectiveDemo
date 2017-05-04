//
//  factorylabelHandle.h
//  OCEffectiveDemo
//
//  Created by zichen0422 on 2017/5/4.
//  Copyright © 2017年 zichen0422. All rights reserved.
//

/**
 *  工厂模式创建label
 */

#import <Foundation/Foundation.h>
@import UIKit;

@interface factorylabelHandle : NSObject

+ (UILabel *)createLabelwithTips:(NSString *)tips;

@end
