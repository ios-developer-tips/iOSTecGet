//
//  SWBulgeTabBar.h
//  iOSTecGet
//
//  Created by 信息科技部 on 2019/4/22.
//  Copyright © 2019 信息科技部. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, SWTabBarType){
    
    SWDefaultTabBarType = 3, // 默认的TabBar样式
    SWBulgeTabBarType = 5   // 中间突出的TabBar样式
};
NS_ASSUME_NONNULL_BEGIN

@class SWBulgeTabBar;

@protocol SWBulgeTabBarDelegate <NSObject>

- (void)tabBar:(SWBulgeTabBar *)tabBar clickCenterButton:(UIButton *)sender;

@end

@interface SWBulgeTabBar : UITabBar
// 代理属性
@property (nonatomic, weak) id<SWBulgeTabBarDelegate> tabDelegate;

// 内部自定义tabBar所需要的属性
@property (nonatomic,assign)SWTabBarType tabBarType;

@property (nonatomic,copy)NSString *centerBtnTitle;
@property (nonatomic,copy)NSString *centerBtnIcon;
@property (nonatomic, strong) UIImageView *bgImgView;
@property (nonatomic, strong) UIImage *bgImage;
@property (nonatomic, strong) UIButton *centerButton;
@property (nonatomic, strong) UILabel *centerTitle;

+ (instancetype)initTabBarWithTabBarType:(SWTabBarType)tabBarType;
@end

NS_ASSUME_NONNULL_END
