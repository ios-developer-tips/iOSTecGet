//
//  SWMJViewController.m
//  iOSTecGet
//
//  Created by 信息科技部 on 2019/4/8.
//  Copyright © 2019 信息科技部. All rights reserved.
//

#import <objc/message.h>
#import "SWMJViewController.h"
#import "SWDog.h"
#import "SWAnimal.h"
#import "UIImage+SWImage.h"
#import "NSObject+Property.h"
// 一、runtime简介
// Runtime简称运行时。OC就是运行时机制，是在运行时的一些特性，其中最重要的是消息机制
// 对于c语言来讲，在编译阶段就决定调用哪个函数；对于OC来说，属于动态调用过程，在编译阶段并不能决定你调用哪个函数，我们可以在运行时动态的添加、修改函数调用
// OC:在编译阶段，OC可以调用任何已经声明的函数
// C:  C语言在编译阶段调用未实现的函数会报错

// 二、runtime的作用:
//
@interface SWMJViewController ()

@end

@implementation SWMJViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
//    SWDog *dog = [[SWDog alloc]init];
//    [dog eat];
//
//    UIImage *image = [UIImage imageNamed:@"guide01"];
    
    // 测试动态添加方法
//    SWAnimal *animal = [[SWAnimal alloc]init];
//    [animal performSelector:@selector(eat)];
    
    // 给分类添加属性
    NSObject *objc = [[NSObject alloc]init];
    objc.name = @"张三";
    NSLog(@"对象的名字叫作:%@",objc.name);
    
    // 字典转模型
//    NSDictionary *dict = @{
//                           @"statuses" : @[
//                                   @{
//                                       @"text" : @"Nice weather!",
//                                       @"user" : @{
//                                               @"name" : @"Rose",
//                                               @"icon" : @"nami.png"
//                                               }
//                                       },
//                                   @{
//                                       @"text" : @"Go camping tomorrow!",
//                                       @"user" : @{
//                                               @"name" : @"Jack",
//                                               @"icon" : @"lufy.png"
//                                               }
//                                       }
//                                   ],
//                           @"ads" : @[
//                                   @{
//                                       @"image" : @"ad01.png",
//                                       @"url" : @"http://www.ad01.com"
//                                       },
//                                   @{
//                                       @"image" : @"ad02.png",
//                                       @"url" : @"http://www.ad02.com"
//                                       }
//                                   ],
//                           @"totalNumber" : @"2014"
//                           };
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
