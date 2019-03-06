//
//  SWWebViewController.m
//  02.富文本测试
//
//  Created by 信息科技部 on 2019/3/6.
//  Copyright © 2019 信息科技部. All rights reserved.
//

#import "SWWebViewController.h"
#import <WebKit/WebKit.h>
@interface SWWebViewController ()

@property (nonatomic,strong)WKWebView *webView;
@end

@implementation SWWebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.webView = [[WKWebView alloc]init];
//    self.webView.frame = CGRectMake(0, 64, <#CGFloat width#>, <#CGFloat height#>)
//    [self.view addSubview:self.webView];
}

@end
