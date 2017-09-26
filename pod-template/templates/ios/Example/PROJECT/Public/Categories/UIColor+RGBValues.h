//
//  UIColor+RGBValues.h
//  DemoProject
//
//  Created by lawson on 2017/9/26.
//  Copyright © 2017年 lawson_y. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (RGBValues)
- (CGFloat)red;
- (CGFloat)green;
- (CGFloat)blue;
- (CGFloat)alpha;

- (UIColor *)darkerColor;
- (UIColor *)lighterColor;
- (BOOL)isLighterColor;
- (BOOL)isClearColor;
+ (UIColor *) colorWithHexString: (NSString *) stringToConvert;

+ (UIColor *) colorWithHexString: (NSString *) stringToConvert withAlpha:(CGFloat)alpha;
+(UIColor*)buttonColor;
- (UIImage*) createImage;
@end
