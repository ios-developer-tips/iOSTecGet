//
//  SWResponseView.m
//  iOSTecGet
//
//  Created by 信息科技部 on 2019/4/15.
//  Copyright © 2019 信息科技部. All rights reserved.
//

#import "SWResponseView.h"

@implementation SWResponseView

#pragma mark -- 处理触摸事件的两个方法
- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event{
    
    // 1.判断下窗口能否接收事件
    if (self.userInteractionEnabled == NO || self.hidden == YES || self.alpha <= 0.01) return nil;
    // 2.判断下点在不在窗口上
    // 不在窗口上
    if ([self pointInside:point withEvent:event] == NO) return nil;
    // 3.从后往前遍历子控件数组
    int count = (int)self.subviews.count;
    for (int i=0; i<count; i++) {
        // 获取子控件
        UIView *childrenView = self.subviews[i];
        // 坐标系的转换，把窗口上的点转换为子控件上的点
        // 把自己控件上的点转换成子控件上的点
        CGPoint childP = [self convertPoint:point toView:childrenView];
        UIView *fitView = [childrenView hitTest:childP withEvent:event];
        if (fitView) {
            // 如果能找到最合适的view
            return fitView;
        }
    }
    // 4.没有找到更合适的view,也就是没有比自己更合适的view
    return self;
}

// 作用:判断下传入过来的点在不在方法调用者的坐标系上
// point:方法调用者坐标系上的点
//- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event{
//    
//    return NO;
//}

#pragma mark -- 系统封装的触摸事件四大方法
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    NSLog(@"%@------------touchesBegan",NSStringFromClass([self class]));
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    NSLog(@"%@------------touchesMoved",NSStringFromClass([self class]));
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    NSLog(@"%@------------touchesEnded",NSStringFromClass([self class]));
}

- (void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    NSLog(@"%@------------touchesCancelled",NSStringFromClass([self class]));
}

@end
