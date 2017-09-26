//
//  LWSHighlightView.m
//  DemoProject
//
//  Created by lawson on 2017/9/26.
//  Copyright © 2017年 lawson_y. All rights reserved.
//

#import "LWSHighlightView.h"

@interface LWSHighlightView ()
@property (nonatomic, strong) UIColor *beginColor;
@property (nonatomic, assign) CGFloat beginAlpha;
@end

@implementation LWSHighlightView

#pragma mark View点击加一层ffffff AlPha为10%的色块高亮
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    //    NSLog(@"开始按压");
    //    [super touchesBegan:touches withEvent:event];
    _beginColor = self.backgroundColor;
    _beginAlpha = self.alpha;
    self.backgroundColor = [UIColor colorWithHexString:@"#EFEFEF" withAlpha:1];
    
}

-(void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    //      NSLog(@"结束按压");
    //    [super touchesEnded:touches withEvent:event];
    self.backgroundColor = _beginColor;
    self.alpha = _beginAlpha;
}

-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    //    NSLog(@"拖动");
    self.backgroundColor = [UIColor colorWithHexString:@"#EFEFEF" withAlpha:1];
    self.alpha = _beginAlpha;
    
}
-(void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    //      NSLog(@"长按压");
    self.backgroundColor = _beginColor;
    self.alpha = _beginAlpha;
}

@end
