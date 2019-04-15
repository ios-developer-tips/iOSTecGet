//
//  SWCodeStandardsViewController.m
//  iOSTecGet
//
//  Created by 信息科技部 on 2019/4/15.
//  Copyright © 2019 信息科技部. All rights reserved.
//

#import "SWCodeStandardsViewController.h"
// MARK:标注
// TODO:备忘录
// FIXME:通常在bug的位置做标记
// #pragma message "warn one":自己创造的警告⚠️
// #pragma mark --：标注的另一种方法
@interface SWCodeStandardsViewController ()

@end

@implementation SWCodeStandardsViewController

// MARK:视图加载到内存
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}

// TODO:返回上级视图
- (void)goback:(id)sender{
    
}

// FIXME:如果使用点击空白处，取消键盘响应事件，打开下面👇代码
- (void)tapGestures:(UITapGestureRecognizer *)gesture{
    [self.view endEditing:YES];
}

#pragma message "warn one"
#warning "warn two"
#pragma mark -- 登录成功后的回调
- (void)loginSuccessFallBack{
    
}
@end
