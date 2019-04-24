//
//  SWBulgeTabBar.h
//  iOSTecGet
//
//  Created by 信息科技部 on 2019/4/22.
//  Copyright © 2019 信息科技部. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, SWTabBarType){
    
    SWDefaultTabBarType, // 默认的TabBar样式
    SWBulgeTabBarType    // 中间突出的TabBar样式
};
NS_ASSUME_NONNULL_BEGIN

@interface SWBulgeTabBar : UITabBar

// 内部自定义tabBar所需要的属性
@property (nonatomic,assign)SWTabBarType tabBarType;

+ (instancetype)initTabBarWithTabBarType:(SWTabBarType)tabBarType;
@end

NS_ASSUME_NONNULL_END
