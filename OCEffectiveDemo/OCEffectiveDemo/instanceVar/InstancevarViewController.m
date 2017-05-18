//
//  InstancevarViewController.m
//  OCEffectiveDemo
//
//  Created by zichen0422 on 2017/5/18.
//  Copyright © 2017年 zichen0422. All rights reserved.
//

#import "InstancevarViewController.h"

@interface InstancevarViewController ()

@end

@implementation InstancevarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSString *tips = @"(1),在对象内部读取数据时,应该直接通过实例变量来读,而写入数据时,则应通过属性来写.\n(2),在初始化方法以及dealloc方法中,总是应该直接通过实例变量来读写数据。\n(3),有时会使用惰性初始化技术配置某份数据,在这种情况下,需要通过属性来读取数据。";
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
