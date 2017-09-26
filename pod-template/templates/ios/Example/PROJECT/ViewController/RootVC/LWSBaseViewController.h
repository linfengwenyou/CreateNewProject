//
//  LWSBaseViewController.h
//  DemoProject
//
//  Created by lawson on 2017/9/26.
//  Copyright © 2017年 lawson_y. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LWSBaseViewController : UIViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil NS_UNAVAILABLE;

- (instancetype)init NS_UNAVAILABLE;

+ (instancetype)defaultViewController;
@end
