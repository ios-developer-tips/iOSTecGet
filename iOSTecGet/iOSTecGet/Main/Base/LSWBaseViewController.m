//
//  LSWBaseViewController.m
//  iOSTecGet
//
//  Created by 信息科技部 on 2019/4/16.
//  Copyright © 2019 信息科技部. All rights reserved.
//

#import "LSWBaseViewController.h"
#import "UIBarButtonItem+SWBarButtonItem.h"

@interface LSWBaseViewController ()


@end

@implementation LSWBaseViewController

#pragma mark -- 生命周期方法
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self setupNavigation];
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
}

- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    
}

- (void)viewDidDisappear:(BOOL)animated{
    [super viewDidDisappear:animated];
    
}

#pragma mark -- 系统方法
- (BOOL)hidesBottomBarWhenPushed{
    
    return YES;
}

#pragma mark -- 自定义方法
- (void)setupNavigation{
    
    // 设置导航栏左边按钮
    
    UIView *backView = [[UIView alloc]initWithFrame:CGRectMake(0, 10*kRateRatioY, 35*kRateRatioX, 35*kRateRatioY)];
//    backView.backgroundColor = [UIColor greenColor];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
//    button.backgroundColor = [UIColor orangeColor];
    [button setBackgroundImage:[UIImage imageNamed:@"back"] forState:UIControlStateNormal];
    button.size = button.currentBackgroundImage.size;
    button.enabled = YES;
    [button addTarget:self action:@selector(backPage) forControlEvents:UIControlEventTouchUpInside];
    [backView addSubview:button];
    button.enlargeEnabled = YES;
    
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:backView];
}

- (void)backPage{
    
    [self.navigationController popViewControllerAnimated:YES];
}

@end
