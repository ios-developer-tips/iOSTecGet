//
//  Status.h
//  iOSTecGet
//
//  Created by 信息科技部 on 2019/4/9.
//  Copyright © 2019 信息科技部. All rights reserved.
//

#import <Foundation/Foundation.h>
//NSDictionary *dict = @{
//                       @"Status" : @[
//                               @{
//                                   @"text" : @"Nice weather!",
//                                   @"user" : @{
//                                           @"name" : @"Rose",
//                                           @"icon" : @"nami.png"
//                                           }
//                                   },
//                               @{
//                                   @"text" : @"Go camping tomorrow!",
//                                   @"user" : @{
//                                           @"name" : @"Jack",
//                                           @"icon" : @"lufy.png"
//                                           }
//                                   }
//                               ],
//                       @"ads" : @[
//                               @{
//                                   @"image" : @"ad01.png",
//                                   @"url" : @"http://www.ad01.com"
//                                   },
//                               @{
//                                   @"image" : @"ad02.png",
//                                   @"url" : @"http://www.ad02.com"
//                                   }
//                               ],
//                       @"totalNumber" : @"2014"
//                       };
NS_ASSUME_NONNULL_BEGIN

@interface Status : NSObject

@property (nonatomic, copy)NSString *text;
@property (nonatomic, copy)NSDictionary *user;

+ (NSDictionary *)arrayContainModelClass;
@end

NS_ASSUME_NONNULL_END
