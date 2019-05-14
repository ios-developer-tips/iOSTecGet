//
//  SWAlgorithmViewController.m
//  iOSTecGet
//
//  Created by 信息科技部 on 2019/4/4.
//  Copyright © 2019 信息科技部. All rights reserved.
//

#import "SWAlgorithmViewController.h"
#import "SWQuickSort.hpp"
#import "SWSingleLinkList.hpp"
//#import "SWQuickSort.cpp"
@interface SWAlgorithmViewController ()

@end

@implementation SWAlgorithmViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
//    QuickSortData();
    createSingleList();
}
@end
