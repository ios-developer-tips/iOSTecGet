//
//  NSObject+Model.h
//  iOSTecGet
//
//  Created by 信息科技部 on 2019/4/9.
//  Copyright © 2019 信息科技部. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (Model)

+ (instancetype)modelWithDict:(NSDictionary *)dict;
@end

NS_ASSUME_NONNULL_END
