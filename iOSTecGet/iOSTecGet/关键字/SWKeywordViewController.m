//
//  SWKeywordViewController.m
//  iOSTecGet
//
//  Created by 信息科技部 on 2019/4/10.
//  Copyright © 2019 信息科技部. All rights reserved.
//

#import "SWKeywordViewController.h"
#import "Person.h"

@interface SWKeywordViewController ()

@property (nonatomic, strong)NSString *strongStr;
@property (nonatomic, copy)NSString *copiedStr;

@end

@implementation SWKeywordViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    NSMutableString *mutableStr = [NSMutableString stringWithFormat:@"zhangsan"];
    self.strongStr = mutableStr;
    self.copiedStr = mutableStr;
    
    NSLog(@"未修改前的字段,strongStr:%@-------------copiedStr:%@",self.strongStr,self.copiedStr);
    NSLog(@"未修改前的地址,strongStr:%p-------------copiedStr:%p",self.strongStr,self.copiedStr);
    // 修改mutableStr值
    [mutableStr appendString:@"18岁"];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    NSLog(@"修改后的字段,strongStr:%@-------------copiedStr:%@",self.strongStr,self.copiedStr);
    NSLog(@"修改后的地址,strongStr:%p-------------copiedStr:%p",self.strongStr,self.copiedStr);
    
    NSLog(@"华丽的分割线----------------------------------------------------end");
    
    // 可变集合类:  1.copy是浅拷贝   2.mutableCopy是深copy
    // 不可变集合类: copy与mutableCopy均是深copy
    NSArray *dataArr = @[@"zhangsan",@"lisi",@"wangwu"];
    NSLog(@"dataArr:%p------------copy:%p-------------mutalbeCopy:%p",dataArr,[dataArr copy],[dataArr mutableCopy]);
    
    NSMutableArray *dataMutableCopy = [@[@"lily",@"hanmeimei",@"lilei"] mutableCopy];
    NSLog(@"dataArr:%p------------copy1:%p-------------mutalbeCopy1:%p",dataMutableCopy,[dataMutableCopy copy],[dataMutableCopy mutableCopy]);
    
    // 非集合类对象
    Person *person = [[Person alloc]init];
    NSLog(@"person:%p------------copy1:%p-------------mutalbeCopy1:%p",person,[person copy],[person mutableCopy]);
}
@end
