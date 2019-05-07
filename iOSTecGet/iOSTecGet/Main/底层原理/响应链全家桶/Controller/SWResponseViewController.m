//
//  SWResponseViewController.m
//  iOSTecGet
//
//  Created by 信息科技部 on 2019/4/15.
//  Copyright © 2019 信息科技部. All rights reserved.
//

#import "SWResponseViewController.h"
#import "SWResponseView.h"
#import "SWOrangeView.h"
#import "SWRedView.h"
#import "SWGreenView.h"
@interface SWResponseViewController ()

@end

@implementation SWResponseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
//    SWResponseView *responseView = [[SWResponseView alloc]init];
//    responseView.frame = CGRectMake(self.view.centerX-100, self.view.centerY-100, 200, 200);
//    responseView.backgroundColor = [UIColor orangeColor];
//    [self.view addSubview:responseView];
    
    // 绿色view
    SWGreenView *greenVIew = [[SWGreenView alloc]init];
    NSLog(@"%@-----%@",NSStringFromCGRect([UIScreen mainScreen].bounds),NSStringFromCGRect(self.view.frame));
    greenVIew.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height-200);
    [self.view addSubview:greenVIew];
    
    // 红色view
    SWRedView *redView = [[SWRedView alloc]init];
    redView.frame = CGRectMake(self.view.centerX-100, self.view.centerY-100, 200, 200);
    [greenVIew addSubview:redView];
    // 橙色view
    SWOrangeView *orangeView = [[SWOrangeView alloc]init];
    orangeView.frame = CGRectMake(100-50, 100-50, 100, 100);
    [redView addSubview:orangeView];
}

#pragma mark -- 系统封装的触摸事件四大方法
// event:
//         1.两根手指头同时触摸，event中封装两个UITouch对象
//         2.两根手指头一前一后触摸，- (void)touchesBegan:withEvent:调用两次，没个event对象中有一个UITouch对象
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{

    NSLog(@"%@------------touchesBegan",NSStringFromClass([self class]));
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{

    NSLog(@"%@------------touchesMoved",NSStringFromClass([self class]));
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{

    NSLog(@"%@------------touchesEnded",NSStringFromClass([self class]));
}

- (void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{

    NSLog(@"%@------------touchesCancelled",NSStringFromClass([self class]));
}


@end
