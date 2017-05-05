//
//  MemoryViewController.m
//  OCEffectiveDemo
//
//  Created by zichen0422 on 2017/5/5.
//  Copyright © 2017年 zichen0422. All rights reserved.
//

#import "MemoryViewController.h"
#import "factorylabelHandle.h"

@interface MemoryViewController ()

@end

@implementation MemoryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSString *tips = @"(1),使用消息结构的语言(OC),其运行时所要执行的代码由运行环境来决定,而使用函数调用的语言(C语言),则由编译器决定。\n(2),OC对象所分配的内存都在\"堆空间(head space)\",而绝不会分配在栈上(stack).不能在栈中分配OC对象。\n(3),Objective-C为C语言添加了面向对象特性,是其超集, Objective-C使用动态绑定的消息结构,也就是说,在运行时才会检查对象类型,接收一条消息之后, 究竟应执行何种代码,由运行期环境而非编译器来决定。\n(4),理解C语言的核心概念有助于写好Objective-C程序,尤其要掌握内存模型和指针.";
    UILabel *tipslabel = [factorylabelHandle createLabelwithTips:tips];
    [self.view addSubview:tipslabel];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
