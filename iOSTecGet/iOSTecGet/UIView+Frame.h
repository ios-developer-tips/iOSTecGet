//
//  UIView+Frame.h
//  iOSTecGet
//
//  Created by 信息科技部 on 2019/4/10.
//  Copyright © 2019 信息科技部. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (Frame)

@property (nonatomic, assign)CGFloat x;
@property (nonatomic, assign)CGFloat y;
@property (nonatomic, assign)CGFloat width;
@property (nonatomic, assign)CGFloat height;
@property (nonatomic, assign)CGFloat centerX;
@property (nonatomic, assign)CGFloat centerY;
@property (nonatomic, assign)CGSize size;
@property (nonatomic, assign)CGFloat borderWidth;
@property (nonatomic, assign)CGFloat cornerRadius;
@property (nonatomic, assign)UIColor *borderColor;

- (void)alignHorizontal;
- (void)alignVertical;
- (BOOL)isShowOnWindow;
- (UIViewController *)parentController;
@end

NS_ASSUME_NONNULL_END
