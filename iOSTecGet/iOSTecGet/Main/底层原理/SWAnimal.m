//
//  SWAnimal.m
//  iOSTecGet
//
//  Created by 信息科技部 on 2019/4/8.
//  Copyright © 2019 信息科技部. All rights reserved.
//

#import "SWAnimal.h"
#import <objc/runtime.h>

@implementation SWAnimal

//- (void)eat{
//
//    NSLog(@"正在吃食物.....");
//}

void eat(id self,SEL sel){

    NSLog(@"%@ %@",self,NSStringFromSelector(sel));
}

// 当一个对象调用未实现的方法，会调用这个方法处理，并且会把对应的方法列表传过来
// 刚好可以用来判断，未实现的方法是不是我们想要动态添加的方法

+ (BOOL)resolveInstanceMethod:(SEL)sel{
    
    if (sel == @selector(eat)) {
        
        // 1.给哪个类添加方法
        // 2.添加方法的方法编号
        // 3.添加方法的函数实现
        // 4.函数的类型
        class_addMethod(self,@selector(eat), eat, "v@:");
    }
    
    return [super resolveInstanceMethod:sel];
}
@end
