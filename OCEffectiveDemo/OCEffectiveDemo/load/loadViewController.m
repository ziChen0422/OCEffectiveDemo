//
//  loadViewController.m
//  OCEffectiveDemo
//
//  Created by zichen0422 on 2017/5/3.
//  Copyright © 2017年 zichen0422. All rights reserved.
//

#import "loadViewController.h"
#import "zichenClassB.h"
#import "zichenClassB+zichen.h"
//#import "zichenClassA.h"
#import "zichenClassCChild.h"
#import "factorylabelHandle.h"

@interface loadViewController ()

@end

@implementation loadViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSLog(@"/------------- classA ---------------/");
    zichenClassA *classA = [[zichenClassA alloc] init];
    NSLog(@"/------------- classB ---------------/");
    zichenClassB *classB = [[zichenClassB alloc] init];
    NSLog(@"/------------- classC ---------------/");
    zichenClassCChild *child = [[zichenClassCChild alloc] init];
    NSLog(@"/------- classC initialize ----------/");
    zichenClassC *classC = [[zichenClassC alloc] init];
    
    
    NSString *tips = @"(1),在加载阶段,如果类实现了load方法,那么系统就会调用它, 分类里也可以定义此方法,类的load方法要比分类中的先调用,与其他方法不同,load方法不参与覆写机制。\n(2),首次使用某个类之前,系统会向其发送initialize消息,由于此防范遵从普通的覆写规则,所以通常应该在里面判断当前要初始化的是哪个类。\n(3),load与initialize方法都应该实现得精简一些,还有助于保持应用程序的响应能力,也能减少引入\"依赖环\"的机率。\n(4),无法在编译期设定的全局变量,可以放在initialize方法里初始化。";
    UILabel *tipslabel = [factorylabelHandle createLabelwithTips:tips];
    [self.view addSubview:tipslabel];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
