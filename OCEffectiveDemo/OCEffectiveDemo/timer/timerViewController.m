//
//  timerViewController.m
//  OCEffectiveDemo
//
//  Created by zichen0422 on 2017/5/4.
//  Copyright © 2017年 zichen0422. All rights reserved.
//

#import "timerViewController.h"
#import "TimerHandle.h"
#import "factorylabelHandle.h"

@interface timerViewController ()

@property (nonatomic, strong) TimerHandle *timerhandle;

@end

@implementation timerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _timerhandle = [[TimerHandle alloc] init];
    //[_timerhandle startPolling];
    [_timerhandle startWithTimerval:3 repeats:YES block:^{
        NSLog(@"%@", [NSDate date]);
    }];
    
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(20 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        [_timerhandle stopPolling];
//    });
    
    NSString *tips = @"(1),NSTimer对象会保留其目标,直到计时器本身失效为止,调用invalidate方法可令计时器失效,另外,一次性的计时器在触发完任务之后也会失效。\n(2),反复执行任务的计时器(repeating timer),很容易引入保留环,如果这种计时器的目标对象又保留了计时器本身,那肯定会导致保留环的, 这种环状保留关系，可能是直接发生, 也可能是通过对象图里的其他对象间接发横的。\n(3),可以扩充NSTimer的功能,用\"块\"来打破保留环,不过,除非NSTimer将来在公共接口里提供此功能,否则必须创建分类,将相关实现代码加入其中。";
    UILabel *tipslabel = [factorylabelHandle createLabelwithTips:tips];
    [self.view addSubview:tipslabel];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
