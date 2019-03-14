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
    
//    // 1.NSDate和NSString之间的相互转化
//    [self transferStringToDate];
//
//    // 2.计算给定两个日期之间相差多少天
//    NSInteger days = [self daysByDate:@"2019-12-28 00:00:00"];
//    NSLog(@"距离考试还有%ld天",days);
    
    // 3.由拼接的字符串转化为带格式的日期字符串
    NSString *currentDateStr = [self translateOriginalFormater:@"yyyyMMddHHmmss" toCurrentFormatter:@"yyyy-MM-dd HH:mm:ss" withDateStr:@"20181015123452"];
    NSLog(@"转化后的DateStr:%@",currentDateStr);
    
    // 4.得到年月日时分秒
    NSString *dateString = [self getYearStringByFormatedString:@"MM" date:[NSDate date]];
    NSLog(@"得到年:%@",dateString);
}

// 字符串转NSDate时，NSDate一定是零时区
- (void)transferStringToDate{

    // 默认是零时区
    NSDate *date = [NSDate date];
    
    //实例化一个NSDateFormatter对象
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    //设定时间格式,这里可以设置成自己需要的格式
    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    //用[NSDate date]可以获取系统当前时间
    NSString *currentDateStr = [dateFormatter stringFromDate:date];
    //输出格式为：2010-10-27 10:22:13
    NSLog(@"%@",currentDateStr);
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

// 将yyyyMMddHHmmss格式转化为yyyy-MM-dd HH:mm:ss
- (NSString *)translateOriginalFormater:(NSString *)lastDateFormatter toCurrentFormatter:(NSString *)currentDateFormatter withDateStr:(NSString *)dateStr{
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
//    NSString *lastDateFormatter = @"yyyyMMddHHmmss";
//    NSString *currentDateFormatter = @"yyyy-MM-dd HH:mm:ss";
    [formatter setDateFormat:lastDateFormatter];
    
    [formatter setTimeZone:[NSTimeZone localTimeZone]];
    NSDate *addDate = [formatter dateFromString:dateStr];
    
    NSDateFormatter *formatter1 = [[NSDateFormatter alloc]init];
    [formatter1 setDateFormat:currentDateFormatter];
    NSString *strDate = [formatter1 stringFromDate:addDate];
    return strDate;
}

// 得到年/月/日/时/分/秒
- (NSString *)getYearStringByFormatedString:(NSString *)formatedString date:(NSDate *)date{
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:formatedString];
    NSString *strDate = [formatter stringFromDate:date];
    return strDate;
}
// 得到月
@end
