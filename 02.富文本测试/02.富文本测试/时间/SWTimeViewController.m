//
//  SWTimeViewController.m
//  02.富文本测试
//
//  Created by 信息科技部 on 2019/2/25.
//  Copyright © 2019 信息科技部. All rights reserved.
//

#import "SWTimeViewController.h"

@interface SWTimeViewController ()

@end

@implementation SWTimeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.navigationItem.title = @"时间";
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
//    [self transferStringToDate];
    
    // 计算给定两个日期之间相差多少天
    NSInteger days = [self daysByDate:@"2019-12-28 00:00:00"];
    NSLog(@"距离考试还有%ld天",days);
    
}

// 字符串转NSDate时，NSDate一定是零时区
- (void)transferStringToDate{
    
//    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
//
//    formatter.dateFormat = @"yyyy-MM-dd HH:mm:ss";
//
//    NSDate *newDate = [formatter dateFromString:@"1986-03-28 06:11:00"];
//
//    NSLog(@"newDate = %@", newDate);
//
    // 默认是零时区
    NSDate *date = [NSDate date];
    NSLog(@"默认的date = %@",date);
    
//    //实例化一个NSDateFormatter对象
//    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
//    //设定时间格式,这里可以设置成自己需要的格式
//    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
//    //用[NSDate date]可以获取系统当前时间
//    NSString *currentDateStr = [dateFormatter stringFromDate:[NSDate date]];
//    //输出格式为：2010-10-27 10:22:13
//    NSLog(@"%@",currentDateStr);
    
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    
    [formatter setDateFormat:@"yyyy-MM-dd HH:mm:ss Z"];
    
    NSDate *newDate = [formatter dateFromString:@"2016-12-07 14:06:24 +0000"];
    
    NSLog(@"newDate = %@", newDate);
}


- (NSInteger)daysByDate:(NSString *)date{
    
    // 获取当前时间
    NSDate *now = [NSDate date];
    // 实例化一个NSDateFormatter对象
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
    // 设定时间格式
    [dateFormatter setDateFormat:@"yyy-MM-dd HH:mm:ss"];
    NSDate *oldDate = [dateFormatter dateFromString:date];
    NSCalendar *gregorian = [[NSCalendar alloc]initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    unsigned int unitFlags = NSCalendarUnitDay;
    NSDateComponents *comps = [gregorian components:unitFlags fromDate:now toDate:oldDate options:0];
    return [comps day];
}
@end
