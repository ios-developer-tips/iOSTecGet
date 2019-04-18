//
//  SWGreenView.m
//  iOSTecGet
//
//  Created by 信息科技部 on 2019/4/18.
//  Copyright © 2019 信息科技部. All rights reserved.
//

#import "SWGreenView.h"

@implementation SWGreenView

- (instancetype)init{
    
    if (self = [super init]) {
        
        self.backgroundColor = [UIColor greenColor];
    }
    return self;
}

#pragma mark -- 处理触摸事件的两个方法
- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event{
    
    return YES;
}

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event{
    
    return self;
}
@end
