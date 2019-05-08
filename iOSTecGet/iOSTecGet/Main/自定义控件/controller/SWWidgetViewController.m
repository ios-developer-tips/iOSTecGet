//
//  SWWidgetViewController.m
//  iOSTecGet
//
//  Created by 信息科技部 on 2019/5/7.
//  Copyright © 2019 信息科技部. All rights reserved.
//

#import "SWWidgetViewController.h"
#import "UIButton+SWButton.h"

@interface SWWidgetViewController ()

@end

@implementation SWWidgetViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *testBtn = [[UIButton alloc]initWithFrame:CGRectMake(100, 200, 150, 100)];
    UIImage *btnImage = [UIImage imageNamed:@"my_ic_coupon"];
    [testBtn setImage:btnImage forState:UIControlStateNormal];
    [testBtn setTitle:@"红色按钮" forState:UIControlStateNormal];
    [testBtn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    
    [testBtn setImagePosition:SWImagePositionTop spacing:5.0];
    [self.view addSubview:testBtn];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
