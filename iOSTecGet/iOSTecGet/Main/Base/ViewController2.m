//
//  ViewController2.m
//  iOSTecGet
//
//  Created by 信息科技部 on 2019/4/10.
//  Copyright © 2019 信息科技部. All rights reserved.
//

#import "ViewController2.h"

@interface ViewController2 ()

@end

@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setupItems];
    
    self.view.backgroundColor = [UIColor orangeColor];
}

- (void)setupItems{
    
    UIImageView *icon = [[UIImageView alloc]init];
    //    icon.backgroundColor = [UIColor redColor];
    icon.frame = CGRectMake(128.5, 8, 118, 28);
    icon.image = [UIImage imageNamed:@"logo-black"];
    //    icon.centerX = self.navigationController.navigationBar.centerX;
    self.navigationItem.titleView = icon;
    //    self.navigationItem.titleView.backgroundColor = [UIColor greenColor];
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
