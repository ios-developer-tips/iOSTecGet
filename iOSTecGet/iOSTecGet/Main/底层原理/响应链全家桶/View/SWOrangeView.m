//
//  SWOrangeView.m
//  iOSTecGet
//
//  Created by 信息科技部 on 2019/4/18.
//  Copyright © 2019 信息科技部. All rights reserved.
//

#import "SWOrangeView.h"

@implementation SWOrangeView

- (instancetype)init{
    
    if (self = [super init]) {
        
        self.backgroundColor = [UIColor orangeColor];
    }
    return self;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [super touchesBegan:touches withEvent:event];
    NSLog(@"%@------------touchesBegan",NSStringFromClass([self class]));
}

#pragma mark -- 处理触摸事件的两个方法
- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event{
    
    CGPoint center = CGPointMake(CGRectGetWidth(self.bounds)/2, CGRectGetHeight(self.bounds)/2);
    BOOL isContainPoint =  [self distanceToPoint:point toCenter:center] < sqrt(ABS(50*50+50*50));
    NSLog(@"----%f",self.size.width);
    return isContainPoint;
}

//- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event{
//
//    UIView *view = [super hitTest:point withEvent:event];
//    if (view == self) {
//        return nil;
//    }
//    return self;
//}

- (CGFloat)distanceToPoint:(CGPoint)point toCenter:(CGPoint)center{
    
    CGFloat distance = ABS((point.x - center.x)*(point.x - center.x)+(point.y - center.y)*(point.y - center.y));
    CGFloat realDistance = sqrt(distance);
    return realDistance;
}
@end
