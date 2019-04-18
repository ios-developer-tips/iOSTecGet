//
//  Person.m
//  02.富文本测试
//
//  Created by 信息科技部 on 2019/3/1.
//  Copyright © 2019 信息科技部. All rights reserved.
//

#import "Person.h"
#import "SWFarmer.h"
@interface Person ()<NSCopying,NSMutableCopying>{

    NSString *_name;
    int _age;
}

@property (nonatomic,copy)NSString *name;
- (void)setName:(NSString *)name;
- (NSString *)name;


- (void)setAge:(int)age;
- (int)age;

@end
/**
 如果重写了变量的getter和setter方法，则在本类中@property默认生成的@synthesize不会起作用，意味着不会自动生成实例变量，所以需要我们手动声明。
 */


/**
 关于父类、子类、分类中load方法的调用顺序问题:
    1.父类>子类>分类(分类的加载顺序与编译顺序有关)
 load方法的调用时机问题
    1.在main函数之前调用
 
 load方法的执行时机:
     当包含类或分类的程序库载入系统时，就回执行此方法。通常是指iOS启动的时候，若程序是iOS平台设计的，肯定回在此时执行。
 为什么不要在load方法中进行复杂的操作:
    1.load方法在主线程中执行，过多的操作回阻塞出线程出现卡顿，例如加锁之类的事情更是不要在里面做。
    2.load方法执行比较早，使用到的其他对象可能未完全初始化
 
 + (void)initialize方法:
 使用注意:1.懒加载 2.由运行期系统调用，不应该显示调用 3.运行期系统在执行此方法时，是处于正常状态，可以安全调用任意类中的任意方法
 4.实现代码要尽量精简
 */
@implementation Person

+ (void)eatingDinner{
    
    if (self == [Person class]) {
        
        // 调用子类中的初始化方法initialize,在SWFarmer的initialize中要调用自身的eatingDinner方法，但是initialize还未初始化完成
        [SWFarmer eatingDinner];
    }
}

+ (void)initialize{
    
    if (self == [Person class]) {
        
        NSLog(@"initialize:%@",self);
    }
}

+ (void)load{
    
    SWFarmer *farmer = [[SWFarmer alloc]init];
    farmer.age = 10;
    
    NSLog(@"----Person-----%@-----------",farmer);
    
    NSLog(@"-----加载的当前类为:%@------",NSStringFromClass([self class]));
}

- (void)setName:(NSString *)name{
    
    if (_name != name) {
        _name = name;
    }
}

- (NSString *)name{
    
    return _name;
}

#pragma mark  -- 是否在getter方法和setter方法的实现中使用self.来访问属性造成死循环
- (void)setAge:(int)age{
    
    if (_age != age) {
       
        _age = age;
    }
}

- (int)age{
    
    return _age;
}

- (id)copyWithZone:(NSZone *)zone{

    Person *person = [[Person alloc]init];
    return person;
}

- (id)mutableCopyWithZone:(NSZone *)zone{

    Person *person = [[Person alloc]init];
    return person;
}
@end
