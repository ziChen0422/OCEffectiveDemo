//
//  enumViewController.m
//  OCEffectiveDemo
//
//  Created by zichen0422 on 2017/5/10.
//  Copyright © 2017年 zichen0422. All rights reserved.
//

#import "enumViewController.h"

@interface enumViewController ()

@end

@implementation enumViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    NSString *tips = @"(1),应该用枚举来表示状态机的状态,";
    
    UILabel *tipslabel = [factorylabelHandle createLabelwithTips:tips];
    [self.view addSubview:tipslabel];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma /****************** life cycle ********************/


#pragma /****************** Functions *********************/


#pragma /****************** init All views ****************/



@end
