//
//  SWWebViewController.h
//  iOSTecGet
//
//  Created by 信息科技部 on 2019/4/4.
//  Copyright © 2019 信息科技部. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>
#import "LSWBaseViewController.h"
NS_ASSUME_NONNULL_BEGIN

@interface SWWebViewController : LSWBaseViewController

@property (nonatomic, strong) WKWebView *webView;
@end

NS_ASSUME_NONNULL_END
