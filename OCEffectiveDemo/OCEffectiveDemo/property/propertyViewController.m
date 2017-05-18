//
//  propertyViewController.m
//  OCEffectiveDemo
//
//  Created by zichen0422 on 2017/5/16.
//  Copyright © 2017年 zichen0422. All rights reserved.
//

#import "propertyViewController.h"

@interface propertyViewController ()

@end

@implementation propertyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSString *tips = @"(1),atomic与nonatomic的区别是,具备atomic特质的获取方法会通过锁定机制来确保其操作的原子性。\n(2),weak该属性定义一种\"非拥有关系\",对象销毁时,属性值也会清空.unsafe_unretained也表达\"非拥有关系\",当对象销毁时,属性值不会自动清空.\n(3),可以用@property语法来定义对象中所封装的数据.\n(4),通过\"特质\"来指定存储数据所需的正确语义。\n(5),在设置属性所对应的实力变量时,一定要遵从改属性所声明的定义。\n(6),在开发iOS程序时应该使用nonatomic属性,因为atomic属性会严重影响性能。";
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
