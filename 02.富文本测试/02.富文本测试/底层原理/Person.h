//
//  Person.h
//  02.富文本测试
//
//  Created by 信息科技部 on 2019/3/1.
//  Copyright © 2019 信息科技部. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject

@property (nonatomic,assign)int age;
- (void)setAge:(int)age;
- (int)age;

+ (void)eatingDinner;
@end

NS_ASSUME_NONNULL_END
