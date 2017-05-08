//
//  constViewController.m
//  OCEffectiveDemo
//
//  Created by zichen0422 on 2017/5/8.
//  Copyright © 2017年 zichen0422. All rights reserved.
//

#import "constViewController.h"
#import "factorylabelHandle.h"

@interface constViewController ()

@end

@implementation constViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSString *tips = @"(1),变量使用static const声明,试图修改的时候会编译报错。\n(2),生成目标文件时,加static const声明,编译器不会创建外部符号, 不加static会创建外部符号。\n(3),不要用预处理指令来定义常量,这样定义出来的常量不含信息类型,编译器只是会在编译前据此执行查找,和替换工作。即使有人重新定义了常量值,编译器也不会产生警告信息,这样导致应用程序中的常量值不一致.\n(4),在实现文件中使用static、const来定义\"只在编译单元内可见的常量\"。由于此常量不在全局符号表中,所以无须为其名称加前缀。\n(5),在头文件中使用extern来声明全局变量,并在相关实现文件中定义其值。这种常量要出现在全局符号表中,所以其名称要加以区隔。通常用与之相关的类名做前缀。";
    UILabel *tipslabel = [factorylabelHandle createLabelwithTips:tips];
    [self.view addSubview:tipslabel];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
