//
//  UIBarButtonItem+SWBarButtonItem.h
//  iOSTecGet
//
//  Created by 信息科技部 on 2019/4/16.
//  Copyright © 2019 信息科技部. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIBarButtonItem (SWBarButtonItem)

+ (instancetype)itemWithImage:(NSString *)image highImage:(NSString *)highImage target:(id)target action:(SEL)action;
@end

NS_ASSUME_NONNULL_END
