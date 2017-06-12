//
//  OCENavigaitonController.m
//  OCEffectiveDemo
//
//  Created by zichen0422 on 2017/6/12.
//  Copyright © 2017年 zichen0422. All rights reserved.
//

#import "OCENavigaitonController.h"

@interface OCENavigaitonController ()

@end

@implementation OCENavigaitonController

+ (void)initialize
{
    UINavigationBar *appbar = [UINavigationBar appearance];
    // 设置NavigationBarItem文字颜色
    //[appbar setTintColor:[UIColor redColor]];
    
    NSShadow *shadow = [[NSShadow alloc]init];
    [shadow setShadowOffset:CGSizeZero];
    [appbar setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor lightGrayColor],
                                            NSShadowAttributeName : shadow}];
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    [super pushViewController:viewController animated:animated];
    if (viewController.navigationItem.leftBarButtonItem == nil && self.viewControllers.count > 1) {
        // 设置返回键按钮
        viewController.navigationItem.leftBarButtonItem = [self creatBackButton];
    }
}

//  创建返回键
- (UIBarButtonItem *) creatBackButton
{
    return [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"back"]
                                            style:UIBarButtonItemStylePlain
                                           target:self
                                           action:@selector(popToViewController)];
}

// 返回ViewController
- (void)popToViewController
{
    [self popViewControllerAnimated:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
