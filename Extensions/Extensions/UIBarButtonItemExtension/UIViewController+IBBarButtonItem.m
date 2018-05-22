//
//  UIViewController+IBBarButtonItem.m
//  Extensions
//
//  Created by Linda Zheng on 2018/2/9.
//  Copyright © 2018年 IceButterfly. All rights reserved.
//

#import "UIViewController+IBBarButtonItem.h"

@implementation UIViewController (IBBarButtonItem)

- (void)setLeftBarButtonItemWithImage:(UIImage *)image
                             leftEdge:(CGFloat)edge
                               target:(id)target
                               action:(SEL)action {
    
    UIBarButtonItem *fix = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
    fix.width = edge - 15;
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setImage:image forState:UIControlStateNormal];
    [btn sizeToFit];
    [btn setBackgroundColor:[UIColor redColor]];
    
//    CGRect frame = btn.frame;
//    if (frame.size.width < 44) {
//        fix.width = fix.width - (44 - image.size.width) / 2;
//        frame.size.width = 44;
//        frame.size.height = 44;
//    }
//    btn.frame = frame;
    
    UIBarButtonItem *left = [[UIBarButtonItem alloc] initWithImage:image style:UIBarButtonItemStylePlain target:nil action:nil];//[[UIBarButtonItem alloc] initWithCustomView:btn];
    left.target = target;
    left.action = action;
    self.navigationItem.leftBarButtonItems = @[fix, left];
}

- (void)setLeftBarButtonItemWithTitle:(NSString *)title
                                 font:(UIFont *)font
                            textColor:(UIColor *)color
                             leftEdge:(CGFloat)edge
                               target:(id)target
                               action:(SEL)action {
    
    UIBarButtonItem *fix = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
    fix.width = edge - 15;
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitle:title forState:UIControlStateNormal];
    if (color) {
        [btn setTitleColor:color forState:UIControlStateNormal];
        [btn setTitleColor:[color colorWithAlphaComponent:0.6] forState:UIControlStateDisabled];
        [btn setTitleColor:[color colorWithAlphaComponent:0.3] forState:UIControlStateHighlighted];
    }
    [btn sizeToFit];
    
    CGRect frame = btn.frame;
    if (frame.size.width < 44) {
        fix.width = fix.width - (44 - frame.size.width)/2;
        frame.size.width = 44;
    }
    frame.size.height = 44;
    btn.frame = frame;
    
    UIBarButtonItem *left = [[UIBarButtonItem alloc] initWithCustomView:btn];
    left.target = target;
    left.action = action;
    self.navigationItem.leftBarButtonItems = @[fix, left];
}

@end
