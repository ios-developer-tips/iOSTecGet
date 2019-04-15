//
//  NSObject+Property.m
//  iOSTecGet
//
//  Created by 信息科技部 on 2019/4/8.
//  Copyright © 2019 信息科技部. All rights reserved.
//

#import "NSObject+Property.h"
#import <objc/runtime.h>
static const char *key = "name";
@implementation NSObject (Property)

- (NSString *)name{
    
    return objc_getAssociatedObject(self, key);
}

- (void)setName:(NSString *)name{
    
    objc_setAssociatedObject(self, key, name, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}
@end
