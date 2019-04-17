//
//  UIBarButtonItem+SWBarButtonItem.m
//  iOSTecGet
//
//  Created by 信息科技部 on 2019/4/16.
//  Copyright © 2019 信息科技部. All rights reserved.
//

#import "UIBarButtonItem+SWBarButtonItem.h"

@implementation UIBarButtonItem (SWBarButtonItem)

+ (instancetype)itemWithImage:(NSString *)image highImage:(NSString *)highImage target:(id)target action:(SEL)action
{
    // 将点击事件添加到UIView上面从而扩大点击范围
    UIGestureRecognizer *ges = [[UIGestureRecognizer alloc]initWithTarget:target action:action];
    UIView *backView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 30*kRateRatioX, 30*kRateRatioY)];
    backView.backgroundColor = [UIColor orangeColor];
    [backView addGestureRecognizer:ges];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setBackgroundImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [button setBackgroundImage:[UIImage imageNamed:highImage] forState:UIControlStateHighlighted];
    button.size = button.currentBackgroundImage.size;
    [backView addSubview:button];
    
    return [[self alloc] initWithCustomView:backView];
}
@end
