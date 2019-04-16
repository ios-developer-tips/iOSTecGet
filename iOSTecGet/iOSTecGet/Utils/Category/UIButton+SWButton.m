//
//  UIButton+SWButton.m
//  iOSTecGet
//
//  Created by 信息科技部 on 2019/4/16.
//  Copyright © 2019 信息科技部. All rights reserved.
//

#import "UIButton+SWButton.h"
#import <objc/runtime.h>

@implementation UIButton (SWButton)
- (BOOL)enlargeEnabled{
    
    return [objc_getAssociatedObject(self, _cmd) boolValue];
    return YES;
}

- (void)setEnlargeEnabled:(BOOL)enlargeEnabled{
    
    objc_setAssociatedObject(self, @selector(enlargeEnabled), @(enlargeEnabled), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}
- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event{
    
    if (self.enlargeEnabled) {
        
        CGRect bounds = self.bounds;
        
        bounds = CGRectInset(bounds, -100, -100);
        
        return CGRectContainsPoint(bounds, point);
    }else{
        
        return [super pointInside:point withEvent:event];
    }
}

- (void)setImagePosition:(SWImagePosition)positon spacing:(CGFloat)spacing{
    
    CGFloat imgW = self.imageView.image.size.width;
    CGFloat imgH  = self.imageView.image.size.height;
    CGSize origLabSize = self.titleLabel.bounds.size;
    CGFloat origLabW = origLabSize.width;
    CGFloat origLabH = origLabSize.height;
    
    CGSize trueSize = [self.titleLabel sizeThatFits:CGSizeMake(MAXFLOAT, MAXFLOAT)];
    CGFloat trueLabW = trueSize.width;
    
    // image中心移动的x距离
    CGFloat imageOffsetX = origLabW/2;
    // image中心移动的y距离
    CGFloat imageOffsetY = origLabH/2 + spacing/2;
    // label左边缘移动的x距离
    CGFloat labelOffsetX1 = imgW/2 - origLabW/2 + trueLabW/2;
    // label右边缘移动的x距离
    CGFloat labelOffsetX2 = imgW/2 + origLabW/2 - trueLabW/2;
    // label中心移动的y距离
    CGFloat labelOffsetY = imgH/2 + spacing/2;
    
    switch (positon) {
        case SWImagePositionLeft: // 正常的情况
            
            self.imageEdgeInsets = UIEdgeInsetsMake(0, -spacing/2, 0, spacing/2);
            self.titleEdgeInsets = UIEdgeInsetsMake(0, spacing/2, 0, -spacing/2);
            break;
        case SWImagePositionRight: // 图片在右，文字在左
            
            self.imageEdgeInsets = UIEdgeInsetsMake(0, origLabW + spacing/2, 0, -(origLabW + spacing/2));
            self.titleEdgeInsets = UIEdgeInsetsMake(0, -(imgW + spacing/2), 0, imgW + spacing/2);
            break;
        case SWImagePositionTop:
            
            self.imageEdgeInsets = UIEdgeInsetsMake(-imageOffsetY, imageOffsetX, imageOffsetY, -imageOffsetX);
            self.titleEdgeInsets = UIEdgeInsetsMake(labelOffsetY, -labelOffsetX1, -labelOffsetY, labelOffsetX2);
            break;
        case SWImagePositionBottom:
            
            self.imageEdgeInsets = UIEdgeInsetsMake(imageOffsetY, imageOffsetX, -imageOffsetY, -imageOffsetX);
            self.titleEdgeInsets = UIEdgeInsetsMake(-labelOffsetY, -labelOffsetX1, labelOffsetY, -labelOffsetX2);
            break;
        default:
            break;
    }
    
    
    
}
@end
