//
//  FoundationViewController.m
//  OCEffectiveDemo
//
//  Created by zichen0422 on 2017/5/5.
//  Copyright © 2017年 zichen0422. All rights reserved.
//

#import "FoundationViewController.h"
#import "factorylabelHandle.h"

@interface FoundationViewController ()

@end

@implementation FoundationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSString *tips = @"(1),应该使用字面量语法来创建字符串、数值、数组、字典。与创建此类对象的常规方法相比、这么做更加简明扼要。\n(2),应该通过取下标操作来访问数组下面或者字典中的键所对应的元素。\n(3),用字面量语法创建数组或字典时,若值中有nil,则会抛出异常。因此,务必确保值里不含nil。";
    UILabel *tipslabel = [factorylabelHandle createLabelwithTips:tips];
    [self.view addSubview:tipslabel];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
