//
//  importViewController.m
//  OCEffectiveDemo
//
//  Created by zichen0422 on 2017/5/5.
//  Copyright © 2017年 zichen0422. All rights reserved.
//

#import "importViewController.h"
#import "factorylabelHandle.h"

@interface importViewController ()

@end

@implementation importViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSString *tips = @"(1),将引入头文件的时机尽量延后,只在确有需要时引入,这样可以减少类的使用者所需引入的头文件数量,也会减少编译时间。\n(2),除非确有必要,否则不要引入头文件，一般来说，应在某个类的头文件中使用向前生命来提及别的类, 并在实现文件中引入那些类的头文件,这样做尽量降低类之间的耦合。\n(3),有时无法使用向前声明,比如要声明某个类遵循一项协议,这种情况下,尽量把\"该类遵循某协议\"的这条声明移至\"class-continuation分类中\". 如果不行的话，就把协议单独放在一个头文件, 然后将其引入。";
    UILabel *tipslabel = [factorylabelHandle createLabelwithTips:tips];
    [self.view addSubview:tipslabel];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
