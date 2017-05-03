//
//  loadViewController.m
//  OCEffectiveDemo
//
//  Created by zichen0422 on 2017/5/3.
//  Copyright © 2017年 zichen0422. All rights reserved.
//

#import "loadViewController.h"
//#import "zichenClassB.h"
//#import "zichenClassB+zichen.h"
#import "zichenClassA.h"

@interface loadViewController ()

@end

@implementation loadViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //zichenClassB *classB = [zichenClassB new];
    NSLog(@"/----------------------------/");
    zichenClassA *classA = [zichenClassA new];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
