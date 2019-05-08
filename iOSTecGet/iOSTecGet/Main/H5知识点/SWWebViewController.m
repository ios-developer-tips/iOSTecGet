//
//  SWWebViewController.m
//  iOSTecGet
//
//  Created by 信息科技部 on 2019/4/4.
//  Copyright © 2019 信息科技部. All rights reserved.
//

#import "SWWebViewController.h"
#import <WebKit/WebKit.h>
#import <JavaScriptCore/JavaScriptCore.h>
@interface SWWebViewController ()<WKUIDelegate,WKNavigationDelegate>


@end

@implementation SWWebViewController
//webVC.PageUrlString = [NSString stringWithFormat:@"file://%@",[[NSBundle mainBundle] pathForResource:@"connectUs" ofType:@"html"]];
//
//webVC.fileUrl = [[NSBundle mainBundle] URLForResource:@"connectUs.html" withExtension:nil];
- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    // Do any additional setup after loading the view.
    WKWebViewConfiguration *config = [[WKWebViewConfiguration alloc] init];
    config.preferences.minimumFontSize = 18;
    self.webView = [[WKWebView alloc]initWithFrame:CGRectMake(0, 0, kScreenWidth, kScreenHeight) configuration:config];
//    self.webView.backgroundColor =  [UIColor colorWithRed:108.0/255 green:108.0/255 blue:108.0/255 alpha:1.0];
//    self.webView.backgroundColor = [UIColor whiteColor];
    self.webView.UIDelegate = self;
    self.webView.navigationDelegate = self;
    [self.view addSubview:self.webView];
    // 1.加载pdf
    NSURL *path =  [[NSBundle mainBundle]URLForResource:@"PDFTest.pdf" withExtension:nil];
    
    // 2.加载本地H5
//    NSURL *path =  [[NSBundle mainBundle]URLForResource:@"index.html" withExtension:nil];
//    NSString *path = [[NSBundle mainBundle]pathForResource:@"index" ofType:@"html"];
    [self.webView loadRequest:[NSURLRequest requestWithURL:path]];
    
    self.webView.allowsBackForwardNavigationGestures = NO;
}

#pragma mark --Delegate

@end
