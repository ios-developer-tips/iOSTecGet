//
//  SWBulgeTabBar.m
//  iOSTecGet
//
//  Created by 信息科技部 on 2019/4/22.
//  Copyright © 2019 信息科技部. All rights reserved.
//

#import "SWBulgeTabBar.h"

@implementation SWBulgeTabBar

+ (instancetype)initTabBarWithTabBarType:(SWTabBarType)tabBarType{
    
    SWBulgeTabBar *tabBar = [[SWBulgeTabBar alloc]init];
    tabBar.tabBarType = tabBarType;
    return tabBar;
}

// 在此处设置frame
- (void)layoutSubviews{
    
    [super layoutSubviews];
    
}
@end
