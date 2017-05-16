//
//  ViewController.m
//  OCEffectiveDemo
//
//  Created by zichen0422 on 2017/5/3.
//  Copyright © 2017年 zichen0422. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) NSArray *controllerArray;     //controller 列表
@property (nonatomic, strong) UITableView *effectiveTbv;      //列表UI

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.title = @"OCEffectiveDemo 52个有效方法";
    _controllerArray = @[@{@"MemoryViewController":@"(1)Memory要点"},
                         @{@"importViewController":@"(2)import向前声明"},
                         @{@"FoundationViewController":@"(3)字面量语法"},
                         @{@"constViewController":@"(4)static/const用法"},
                         @{@"enumViewController":@"(5)enum用法"},
                         @{@"propertyViewController":@"(6)理解property属性"},
                         @{@"loadViewController":@"(51)测试load/initialize"},
                         @{@"timerViewController":@"(52)测试Timer"},
                         @{@"TipsViewController":@"(100)项目中遇到的小细节"}];
    self.view.backgroundColor = [UIColor whiteColor];
    [self createTableView];
}

#pragma mark - /*** 初始化UI ***/
- (void)createTableView
{
    _effectiveTbv = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height)];
    _effectiveTbv.delegate = self;
    _effectiveTbv.dataSource = self;
    _effectiveTbv.backgroundColor = [UIColor whiteColor];
    _effectiveTbv.estimatedRowHeight = 55;
    _effectiveTbv.rowHeight = 55;
    if ([_effectiveTbv respondsToSelector:@selector(setSeparatorInset:)]) {
        [_effectiveTbv setSeparatorInset:UIEdgeInsetsZero];
    }
    if ([_effectiveTbv respondsToSelector:@selector(setLayoutMargins:)]) {
        [_effectiveTbv setLayoutMargins:UIEdgeInsetsZero];
    }
    _effectiveTbv.tableFooterView = [UIView new];
    [self.view addSubview:_effectiveTbv];
}

#pragma mark - /*** UITableViewDelegate UITableViewDataSource ***/
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_controllerArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *controllStr = @"effectiveCell";
    UITableViewCell *cell;
    cell = [tableView dequeueReusableCellWithIdentifier:controllStr];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:controllStr];
        if ([cell respondsToSelector:@selector(setSeparatorInset:)]) {
            [cell setSeparatorInset:UIEdgeInsetsZero];
        }
        if ([cell respondsToSelector:@selector(setLayoutMargins:)]) {
            [cell setLayoutMargins:UIEdgeInsetsZero];
        }
    }
    NSDictionary *dic = [_controllerArray objectAtIndex:indexPath.row];
    NSString *keys = dic.allKeys[0];
    NSString *className = dic[keys];
    cell.textLabel.text = keys;
    cell.detailTextLabel.text = className;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    NSDictionary *dic = [_controllerArray objectAtIndex:indexPath.row];
    NSString *className = dic.allKeys[0];
    NSString *title = dic[className];
    id vc = [[NSClassFromString(className) alloc] init];
    if ([vc isKindOfClass:[UIViewController class]]) {
        UIViewController *newVC = (UIViewController *)vc;
        newVC.navigationItem.title = title;
        [self.navigationController pushViewController:newVC animated:YES];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
