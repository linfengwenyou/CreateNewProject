//
//  LWSNavigationVC.m
//  DemoProject
//
//  Created by lawson on 2017/9/26.
//  Copyright © 2017年 lawson_y. All rights reserved.
//

#import "LWSNavigationVC.h"

@interface LWSNavigationVC ()

@end

@implementation LWSNavigationVC

- (void)configTabItemWithTitle:(NSString *)title normalImage:(UIImage *)normalImage selectedImage:(UIImage *)selectImage tag:(NSInteger)tag
{
    self.tabBarItem = [[UITabBarItem alloc] initWithTitle:title image:normalImage tag:tag];
    self.tabBarItem.selectedImage = selectImage;
}

// 如果背景为深色，需要将状态栏设置为白色
//- (UIStatusBarStyle)preferredStatusBarStyle
//{
//    return UIStatusBarStyleLightContent;
//}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self configAppearence];
}

#pragma mark - 配置背景展示信息
- (void)configAppearence
{
    // 如果确定使用某种颜色需要打开配置
//    self.navigationBar.barTintColor = LWSRGBColor(33, 33, 36);
//    self.navigationBar.translucent = NO;
    // 标题颜色设置为白色，如果背景为深色
//    [[UINavigationBar appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor]}];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
