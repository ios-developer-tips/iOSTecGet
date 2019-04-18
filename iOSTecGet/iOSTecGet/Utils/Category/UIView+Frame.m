//
//  UIView+Frame.m
//  iOSTecGet
//
//  Created by 信息科技部 on 2019/4/10.
//  Copyright © 2019 信息科技部. All rights reserved.
//

#import "UIView+Frame.h"

@implementation UIView (Frame)

- (void)setX:(CGFloat)x{
    
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}

- (CGFloat)x{
    
    return self.frame.origin.x;
}

- (void)setY:(CGFloat)y{
    
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}

- (CGFloat)y{
    
    return self.frame.origin.y;
}

- (void)setWidth:(CGFloat)width{
    
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

- (CGFloat)width{
    
    return self.frame.size.width;
}

- (void)setHeight:(CGFloat)height{
    
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}

- (CGFloat)height{
    
    return self.frame.size.height;
}

- (void)setSize:(CGSize)size{
    
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
}

- (CGSize)size{
    
    return self.frame.size;
}

- (void)setCenterX:(CGFloat)centerX{
    
    CGPoint center = self.center;
    center.x = centerX;
    self.center = center;
}

- (CGFloat)centerX{
    
    return self.center.x;
}

- (void)setCenterY:(CGFloat)centerY{
    
    CGPoint center = self.center;
    center.y = centerY;
    self.center = center;
}

- (CGFloat)centerY{
    
    return self.center.y;
}

- (void)alignHorizontal{
    
    self.x = (self.superview.width - self.width)*0.5;
}

- (void)alignVertical{
    
    self.y = (self.superview.height - self.height)*0.5;
}

- (void)setBorderWidth:(CGFloat)borderWidth{
    
    if (borderWidth < 0) {
        return;
    }
    self.layer.borderWidth = borderWidth;
}

- (CGFloat)borderWidth{
    
    return self.layer.borderWidth;
}

- (void)setBorderColor:(UIColor *)borderColor{
    
    self.layer.borderColor = borderColor.CGColor;
}

//- (UIColor *)borderColor{
//
//    return self.borderColor;
//}

- (void)setCornerRadius:(CGFloat)cornerRadius{
    
    self.layer.cornerRadius = cornerRadius;
    self.layer.masksToBounds = YES;
}

- (CGFloat)cornerRadius{
    
    return self.layer.cornerRadius;
}

- (BOOL)isShowOnWindow{
    
    // 主窗口
    UIWindow *keyWindow = [UIApplication sharedApplication].keyWindow;
    
    // 相对于父控件转换之后的rect
    CGRect newRect = [keyWindow convertRect:self.frame fromView:self.superview];
    // 主窗口的bounds
    CGRect winBounds = keyWindow.bounds;
    // 判断两个坐标是否有交汇的地方，返回bool值
    BOOL isInerests = CGRectIntersectsRect(newRect, winBounds);
    if (self.hidden != YES && self.alpha > 0.01 && self.window == keyWindow && isInerests) {
        return YES  ;
    }else{
        return NO;
    }
}

- (UIViewController *)parentController{
    
    UIResponder *responder = [self nextResponder];
    while (responder) {
        if ([responder isKindOfClass:[UIViewController class]]) {
            return (UIViewController *)responder;
        }
        responder = [responder nextResponder];
    }
    return nil;
}
@end
