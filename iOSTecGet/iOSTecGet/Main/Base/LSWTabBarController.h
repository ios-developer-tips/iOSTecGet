//
//  LSWTabBarController.h
//  iOSTecGet
//
//  Created by 信息科技部 on 2019/4/10.
//  Copyright © 2019 信息科技部. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@interface SWTabBarModel : NSObject
// 设置tabBar常用的属性
@property (nonatomic, strong) UIViewController *vc;
@property (nonatomic, copy)   NSString *imageName;
@property (nonatomic, copy)   NSString *selectedImageName;
@property (nonatomic, copy)   NSString *title;
@property (nonatomic, copy)   NSString *flag;
@end
@interface LSWTabBarController : UITabBarController

- (void)setBugeTabBar;
@end

NS_ASSUME_NONNULL_END
