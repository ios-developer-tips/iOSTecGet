//
//  UIImage+SWImage.m
//  iOSTecGet
//
//  Created by 信息科技部 on 2019/4/8.
//  Copyright © 2019 信息科技部. All rights reserved.
//

#import "UIImage+SWImage.h"
#import <objc/runtime.h>
@implementation UIImage (SWImage)

+ (void)load{
    
    Method method1 = class_getClassMethod(self, @selector(imageNamed:));
    Method method2 = class_getClassMethod(self, @selector(imageWithName:));
    method_exchangeImplementations(method1, method2);
}

+ (instancetype)imageWithName:imageName{
    
   UIImage *image =  [self imageWithName:imageName];
    if (image == nil) {
        
        NSLog(@"创建的image为nil");
    }else{
        
        NSLog(@"创建成功");
    }
    return image;
}
@end
