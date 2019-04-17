//
//  UIButton+SWButton.h
//  iOSTecGet
//
//  Created by 信息科技部 on 2019/4/16.
//  Copyright © 2019 信息科技部. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef NS_ENUM(NSInteger, SWImagePosition) {
    
    SWImagePositionLeft        = 0,
    SWImagePositionRight      = 1,
    SWImagePositionTop        = 2,
    SWImagePositionBottom   = 3,
};
NS_ASSUME_NONNULL_BEGIN

@interface UIButton (SWButton)

@property (nonatomic, assign) BOOL enlargeEnabled;
/**
 利用UIButton的titleEdgeInsets和imageEdgeInsets来实现文字和图片的自由排列

 @param positon 排列的方式
 @param spacing 排列的间隔
 */
- (void)setImagePosition:(SWImagePosition)positon spacing:(CGFloat)spacing;
@end

NS_ASSUME_NONNULL_END
