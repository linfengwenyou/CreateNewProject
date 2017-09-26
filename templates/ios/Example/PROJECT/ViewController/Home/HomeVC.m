//
//  HomeVC.m
//  DemoProject
//
//  Created by lawson on 2017/9/26.
//  Copyright © 2017年 lawson_y. All rights reserved.
//

#import "HomeVC.h"
//#import <SDCycleScrollView.h>
#import "LWSHighlightView.h"

@interface HomeVC ()<UITableViewDelegate,UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (strong, nonatomic) IBOutlet UIView *tableViewHeaderView;

//@property (weak, nonatomic) IBOutlet SDCycleScrollView *autoBanner;


@property (weak, nonatomic) IBOutlet LWSHighlightView *tradeView;
@property (weak, nonatomic) IBOutlet LWSHighlightView *aboutView;
@property (weak, nonatomic) IBOutlet LWSHighlightView *guideView;
@property (weak, nonatomic) IBOutlet LWSHighlightView *contactView;

@end

@implementation HomeVC

+ (instancetype)defaultViewController
{
    return [[[self class] alloc] initWithNibName:NSStringFromClass([self class]) bundle:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initUI];
    [self initAction];
    [self initData];
    
    
}

- (void)initUI
{
    //    self.title = @"首页";
    self.tableView.tableHeaderView = self.tableViewHeaderView;
}

- (void)initData
{
//    self.autoBanner.imageURLStringsGroup = @[@"http://fyyh.ucsmy.com/upload/1502162267465.png",
//                                             @"http://fyyh.ucsmy.com/upload/1500971263748.png"];

}

- (void)initAction
{
    UITapGestureRecognizer *tap1 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(didClickViewAction:)];
    UITapGestureRecognizer *tap2 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(didClickViewAction:)];
    UITapGestureRecognizer *tap3 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(didClickViewAction:)];
    UITapGestureRecognizer *tap4 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(didClickViewAction:)];
    
    [self.tradeView addGestureRecognizer:tap1];
    [self.aboutView addGestureRecognizer:tap2];
    [self.guideView addGestureRecognizer:tap3];
    [self.contactView addGestureRecognizer:tap4];
}

#pragma mark - tableView Delegate & dataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [UITableViewCell new];
    cell.textLabel.text = @"ssddfadfasdf";
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 3;
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{
    return [UIView new];
}

#pragma mark - action ,一跳转到列表，二调整到登录，三跳转到资讯详情

- (void)didClickViewAction:(id)sender
{
#warning lius 跳转到首页
    LWSLog(@"测试一下");
}
- (IBAction)didClickMoreAction:(id)sender
{
    // 需要跳转到列表
    LWSLog(@"需要跳转到列表");
}

@end
