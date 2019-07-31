//
//  SWBulgeTabBar.m
//  iOSTecGet
//
//  Created by 信息科技部 on 2019/4/22.
//  Copyright © 2019 信息科技部. All rights reserved.
//

#import "SWBulgeTabBar.h"
#import <objc/runtime.h>

@implementation SWBulgeTabBar

+ (instancetype)initTabBarWithTabBarType:(SWTabBarType)tabBarType{
    
    SWBulgeTabBar *tabBar = [[SWBulgeTabBar alloc]init];
    tabBar.tabBarType = tabBarType;
    return tabBar;
}

- (instancetype)initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    if (self) {
        self.translucent = NO;
        
        self.bgImgView = [[UIImageView alloc]init];
        self.bgImgView.contentMode = UIViewContentModeScaleToFill;
        [self insertSubview:self.bgImgView atIndex:0];
        
        UIButton *plusBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        self.centerButton = plusBtn;
        [plusBtn addTarget:self action:@selector(plusBtnDidClick) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:plusBtn];
        
        UILabel *scanLabel = [[UILabel alloc]init];
        self.centerTitle = scanLabel;
        scanLabel.font = [UIFont fontWithName:@".SFUIText-Medium" size:10];
        scanLabel.textColor = [UIColor colorWithWhite:0.57 alpha:1.0];
        scanLabel.textAlignment = NSTextAlignmentCenter;
        [self addSubview:scanLabel];
    }
    return self;
}

- (void)plusBtnDidClick{
    
    if (self.tabDelegate && [self.tabDelegate respondsToSelector:@selector(tabBar:clickCenterButton:)]) {
        [self.tabDelegate tabBar:self clickCenterButton:self.centerButton];
    }
}



// 在此处设置frame
- (void)layoutSubviews{
    
    [super layoutSubviews];
    CGFloat width = self.frame.size.width/self.tabBarType;
    Class class = NSClassFromString(@"UITabBarButton");
    Class barBgClass = NSClassFromString(@"_UIBarBackground");
    
    self.centerButton.frame = CGRectMake(0, 0, width, self.frame.size.height);
    [self.centerButton sizeToFit];
    self.centerButton.center = CGPointMake(self.frame.size.width/2, 7.5);
    
    self.centerTitle.frame = CGRectMake(0, 0, width, 15);
    self.centerTitle.center = CGPointMake(self.frame.size.width/2, CGRectGetMaxY(self.centerButton.frame)+10);
    
    CGFloat h = self.bgImgView.image.size.height;
    self.bgImgView.layer.borderColor = [UIColor clearColor].CGColor;
    if (isIphoneX) {
        
        self.bgImgView.frame = CGRectMake(0, -(h+34*kRateRatioX-self.frame.size.height), self.frame.size.width, self.frame.size.height + ( h - self.frame.size.height));
    } else {
        
        self.bgImgView.frame = CGRectMake(0, -(h-self.frame.size.height), self.frame.size.width, self.frame.size.height + (h - self.frame.size.height));
    }
    for (UIView *view in self.subviews) {
        
        if ([view isKindOfClass:class]) {
            CGRect frame = view.frame;
            int indexFromOrigin = view.frame.origin.x/width;
            if (indexFromOrigin >= (self.tabBarType -1 )/2) {
                indexFromOrigin ++;
            }
            CGFloat x = indexFromOrigin*width;
            // 如果是系统的UITabBarButton，那么就调整控件位置，空出中间位置
            view.frame = CGRectMake(x, view.frame.origin.y, width, frame.size.height);
            
            // 调整bage postion
            for (UIView *bageView in view.subviews) {
                NSString *className = NSStringFromClass([bageView class]);
                if ([className rangeOfString:@"BageView"].location != NSNotFound) {
                    bageView.layer.transform = CATransform3DIdentity;
                    bageView.layer.transform = CATransform3DMakeTranslation(-17, 1.0, 1.0);
                    break;
                }
            }
        }else{
            
            
        }
    }
}

//- (void)setCenterButton:(UIButton *)centerButton{
//
//    _centerButton = centerButton;
//    [_centerButton setBackgroundImage:[UIImage imageNamed:self.centerBtnIcon] forState:UIControlStateNormal];
//    [_centerButton setBackgroundImage:[UIImage imageNamed:self.centerBtnIcon] forState:UIControlStateHighlighted];
//}

- (void)setCenterBtnIcon:(NSString *)centerBtnIcon{
    
    _centerBtnIcon = centerBtnIcon;
    [self.centerButton setBackgroundImage:[UIImage imageNamed:self.centerBtnIcon] forState:UIControlStateNormal];
    [self.centerButton setBackgroundImage:[UIImage imageNamed:self.centerBtnIcon] forState:UIControlStateHighlighted];
}

- (void)setCenterBtnTitle:(NSString *)centerBtnTitle{
    
    _centerBtnTitle = centerBtnTitle;
    self.centerTitle.text = centerBtnTitle;
}
@end
