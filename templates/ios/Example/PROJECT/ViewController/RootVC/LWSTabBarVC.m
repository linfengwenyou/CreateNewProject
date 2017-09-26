//
//  LWSTabBarVC.m
//  DemoProject
//
//  Created by lawson on 2017/9/26.
//  Copyright © 2017年 lawson_y. All rights reserved.
//

#import "LWSTabBarVC.h"
#import "HomeVC.h"
#import "TradeVC.h"
#import "HandInVC.h"
#import "MineVC.h"
#import "LWSNavigationVC.h"

@interface LWSTabBarVC ()

@end

@implementation LWSTabBarVC

+ (instancetype)defaultViewController
{
    return [[[self class] alloc] init];
}

- (instancetype)init
{
    if (self = [super init]) {
        [self configSubViewControllers];
        [self configAppearence];
    }
    return self;
}

- (void)configSubViewControllers
{
    HomeVC *vc1 = [HomeVC defaultViewController];
    TradeVC *vc2 = [TradeVC defaultViewController];
    HandInVC *vc3 = [HandInVC defaultViewController];
    MineVC *vc4 = [MineVC defaultViewController];
    
    
    LWSNavigationVC *navi1 = [[LWSNavigationVC alloc] initWithRootViewController:vc1];
    [navi1 configTabItemWithTitle:@"首叶" normalImage:[UIImage imageNamed:@"tab_home_no.png"] selectedImage:[UIImage imageNamed:@"tab_home_sele.png"] tag:1];
    
    
    LWSNavigationVC *navi2 = [[LWSNavigationVC alloc] initWithRootViewController:vc2];
    [navi2 configTabItemWithTitle:@"二叶" normalImage:[UIImage imageNamed:@"tab_trade_no.png"] selectedImage:[UIImage imageNamed:@"tab_trade_sele.png"] tag:2];
    
    LWSNavigationVC *navi3 = [[LWSNavigationVC alloc] initWithRootViewController:vc3];
    [navi3 configTabItemWithTitle:@"三叶" normalImage:[UIImage imageNamed:@"tab_handin_no.png"] selectedImage:[UIImage imageNamed:@"tab_handin_sele.png"] tag:3];

    
    LWSNavigationVC *navi4 = [[LWSNavigationVC alloc] initWithRootViewController:vc4];
    [navi4 configTabItemWithTitle:@"四叶" normalImage:[UIImage imageNamed:@"tab_mine_no.png"] selectedImage:[UIImage imageNamed:@"tab_mine_no.png"] tag:4];


    self.viewControllers = @[navi1,navi2,navi3,navi4];
}

#pragma mark - 配置TabBar背景等信息
- (void)configAppearence
{
    self.tabBar.translucent = NO;
    // 设置bar的背景色
    self.tabBar.barTintColor = [UIColor whiteColor];
    
    // 设置选中时图片文字的渲染颜色
    self.tabBar.tintColor = [UIColor blackColor];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
