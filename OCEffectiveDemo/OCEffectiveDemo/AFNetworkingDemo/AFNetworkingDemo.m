//
//  AFNetworkingDemo.m
//  OCEffectiveDemo
//
//  Created by zichen0422 on 2017/11/16.
//  Copyright © 2017年 zichen0422. All rights reserved.
//

#import "AFNetworkingDemo.h"
#import <AFNetworking/AFNetworking.h>

@interface AFNetworkingDemo ()

@end

@implementation AFNetworkingDemo

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = @"AFNetworkingDemo";
    [self lazyInitData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)networkClickAction
{
    
}

- (void)lazyInitData
{
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(0,0, 100, 50)];
    [btn setTitle:@"Network" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    btn.backgroundColor = [UIColor redColor];
    btn.center = self.view.center;
    [btn addTarget:self action:@selector(networkClickAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

@end
