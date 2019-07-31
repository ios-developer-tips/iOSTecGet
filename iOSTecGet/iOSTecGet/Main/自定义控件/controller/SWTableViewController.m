//
//  SWTableViewController.m
//  iOSTecGet
//
//  Created by 信息科技部 on 2019/7/19.
//  Copyright © 2019 信息科技部. All rights reserved.
//

#import "SWTableViewController.h"
#import <MJRefresh.h>
@interface SWTableViewController ()

@end

@implementation SWTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    // 初始化header
    self.tableView.mj_header = [MJRefreshHeader headerWithRefreshingTarget:self refreshingAction:@selector(refreshView)];
    self.tableView.mj_header.frame = CGRectMake(0, 44*kRateRatioY, kScreenWidth, 44*kRateRatioY);
    [self.tableView.mj_header beginRefreshing];
    self.tableView.backgroundColor = [UIColor greenColor];
    self.tableView.mj_header.backgroundColor = [UIColor orangeColor];
    self.tableView.tableFooterView = [[UIView alloc]initWithFrame:CGRectZero];
    
    
}
- (void)refreshView{
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
        [self.tableView.mj_header endRefreshing];
    });
    
//    NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:10.0 repeats:NO block:^(NSTimer * _Nonnull timer) {
//
//        [weakSelf.tableView.mj_header endRefreshing];
//    }];
//    // 执行这段代码，立即执行block中的内容
//    [timer setFireDate:[NSDate distantPast]];;
    
    
}
#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return 30;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return 45;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"identifier"];
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}
@end
