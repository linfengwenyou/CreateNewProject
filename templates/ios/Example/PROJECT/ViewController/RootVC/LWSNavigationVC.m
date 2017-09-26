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

- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self configAppearence];
}

#pragma mark - 配置背景展示信息
- (void)configAppearence
{
    self.navigationBar.barTintColor = LWSRGBColor(33, 33, 36);
    self.navigationBar.translucent = NO;
    
    [[UINavigationBar appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor]}];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
