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

    NSString *tips = @"(1),应该用枚举来表示状态机的状态,传递给方法的选项以及状态码等值,给这些值奇哥易懂的名字。\n(2),如果把传递给某个方法的选项标识为枚举类型,而多个选项又可同时使用,那么就将各选项值定义为2的幂,以便通过按位或操作将其组合起来.\n(3),用NS_ENUM与NS_OPTIONS宏来定义枚举类型,并指明其底层数据类型,这样做可以确保枚举用来开发者所选的底层数据类型实现出来的,而不会采用编译器所选的类型。\n(4),在处理枚举类型的switch语句中不要实现default分支,这样的话,假如新枚举之后,编译器就会提示开发者:switch语句并未处理所有枚举.";
    
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
