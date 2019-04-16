//
//  SWResponseView.m
//  iOSTecGet
//
//  Created by 信息科技部 on 2019/4/15.
//  Copyright © 2019 信息科技部. All rights reserved.
//

#import "SWResponseView.h"

@implementation SWResponseView

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event{
    
    return self;
}

- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event{
    
    return YES;
}

@end
