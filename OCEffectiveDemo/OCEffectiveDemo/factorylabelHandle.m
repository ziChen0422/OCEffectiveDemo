//
//  factorylabelHandle.m
//  OCEffectiveDemo
//
//  Created by zichen0422 on 2017/5/4.
//  Copyright © 2017年 zichen0422. All rights reserved.
//

#import "factorylabelHandle.h"

@implementation factorylabelHandle

+ (UILabel *)createLabelwithTips:(NSString *)tips
{
    UILabel *tipslabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 0, [[UIScreen mainScreen] bounds].size.width - 20, [[UIScreen mainScreen] bounds].size.height - 64)];
    tipslabel.text = tips;
    tipslabel.numberOfLines = 0;
    return tipslabel;
}

@end
