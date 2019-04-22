//
//  LSWTabBarController.m
//  iOSTecGet
//
//  Created by 信息科技部 on 2019/4/10.
//  Copyright © 2019 信息科技部. All rights reserved.
//

#import "LSWTabBarController.h"
#import "LSWNavigationController.h"
#import "ViewController.h"
#import "ViewController1.h"
#import "ViewController2.h"
#import "ViewController3.h"
#import "LSWBaseModel.h"

@implementation SWTabBarModel

@end
@interface LSWTabBarController ()

@end

@implementation LSWTabBarController

+ (void)initialize{
    
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    ViewController *vc = [[ViewController alloc]init];
    ViewController1 *vc1 = [[ViewController1 alloc]init];
    ViewController2 *vc2 = [[ViewController2 alloc]init];
    ViewController3 *vc3 = [[ViewController3 alloc]init];
    
    [self setupChildVc:vc title:@"首页" image:@"home" selectedImage:@"home-selected"];
    [self setupChildVc:vc1 title:@"云金融" image:@"yun-server" selectedImage:@"yun-server-selected"];
    [self setupChildVc:vc2 title:@"云分期" image:@"yun-staging" selectedImage:@"yun-staging-selected"];
    [self setupChildVc:vc3 title:@"我的" image:@"mine" selectedImage:@"mine-selected"];
    
//    NSArray *images = @[@"home",@"yun-server", @"yun-staging", @"mine"];
//    NSArray *clickImages = @[@"home-selected", @"yun-server-selected",@"yun-staging-selected",@"mine-selected"];
//    NSMutableArray *viewControllers = [NSMutableArray array];
//    [viewControllers enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
//
//
//    }];
}

/**
 * 初始化子控制器
 */
- (void)setupChildVc:(UIViewController *)vc title:(NSString *)title image:(NSString *)image selectedImage:(NSString *)selectedImage
{
    // 设置文字和图片
    vc.navigationItem.title = title;
    vc.tabBarItem.title = title;
    
    NSDictionary *dictHome = [NSDictionary dictionaryWithObject:[UIColor redColor] forKey:NSForegroundColorAttributeName];
    [vc.tabBarItem setTitleTextAttributes:dictHome forState:UIControlStateSelected];

    vc.tabBarItem.image = [[UIImage imageNamed:image]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    vc.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImage]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        // 包装一个导航控制器, 添加导航控制器为tabbarcontroller的子控制器
    LSWNavigationController *nav = [[LSWNavigationController alloc] initWithRootViewController:vc];
    [self addChildViewController:nav];
}

- (void)setBugeTabBar{
    
    
}

// 统一返回未经渲染的图片
- (UIImage *)setDefalutImageWithImageName:(NSString *)imageName{
    
    return [[UIImage imageNamed:imageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
}
@end
