//
//  LWSNavigationVC.h
//  DemoProject
//
//  Created by lawson on 2017/9/26.
//  Copyright © 2017年 lawson_y. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LWSNavigationVC : UINavigationController
- (void)configTabItemWithTitle:(NSString *)title normalImage:(UIImage *)normalImage selectedImage:(UIImage *)selectImage tag:(NSInteger)tag;
@end
