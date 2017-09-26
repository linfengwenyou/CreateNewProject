//
//  LWSBaseViewController.m
//  DemoProject
//
//  Created by lawson on 2017/9/26.
//  Copyright © 2017年 lawson_y. All rights reserved.
//

#import "LWSBaseViewController.h"

@interface LWSBaseViewController ()

@end

@implementation LWSBaseViewController


+ (instancetype)defaultViewController
{
    return [[[self class] alloc] init];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.edgesForExtendedLayout = UIRectEdgeNone;
    self.view.backgroundColor = [UIColor groupTableViewBackgroundColor];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
