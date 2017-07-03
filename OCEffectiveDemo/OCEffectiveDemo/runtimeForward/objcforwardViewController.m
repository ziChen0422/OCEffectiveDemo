//
//  objcforwardViewController.m
//  OCEffectiveDemo
//
//  Created by zichen0422 on 2017/6/5.
//  Copyright © 2017年 zichen0422. All rights reserved.
//

#import "objcforwardViewController.h"
#import "forwardModel.h"
#import <MBProgressHUD/MBProgressHUD.h>

@interface objcforwardViewController ()

@end

@implementation objcforwardViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self initAllViews];
    NSLog(@"/****************** 消息转发 ******************/");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma /****************** life cycle ********************/


#pragma /****************** Functions *********************/
- (void)testforwordAction:(id)sender
{
    forwardModel *model = [forwardModel new];
    [model testObjcforward];
    [model messageHello];
    [model testforward:@"hello"];
    // 测试类方法
    [forwardModel classMessageHello];
    
    MBProgressHUD *HUD = [MBProgressHUD showHUDAddedTo:self.navigationController.view animated:YES];
    HUD.mode = MBProgressHUDModeText;
    HUD.label.text = @"测试消息转发";
    [HUD hideAnimated:YES afterDelay:2];
}

#pragma /****************** init All views ****************/
- (void)initAllViews
{
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(([UIScreen mainScreen].bounds.size.width - 100)/2, (self.view.frame.size.height - 150)/2, 100, 50)];
    btn.backgroundColor = [UIColor redColor];
    btn.layer.cornerRadius = 5;
    btn.layer.masksToBounds = YES;
    [btn setTitle:@"Test" forState:UIControlStateNormal];
    [btn setImage:[UIImage imageNamed:@"check"] forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(testforwordAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}


@end
