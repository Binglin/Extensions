//
//  UIBarButtonItem+IBExtension.m
//  Extensions
//
//  Created by Linda Zheng on 2018/2/9.
//  Copyright © 2018年 IceButterfly. All rights reserved.
//

#import "UIBarButtonItem+IBExtension.h"

@implementation UIBarButtonItem (IBExtension)

- (instancetype)initWithImage:(UIImage *)image
                       target:(id)target
                       action:(SEL)action {
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setImage:image forState:UIControlStateNormal];
    [btn sizeToFit];
    
    CGRect frame = btn.frame;
    if (frame.size.width < 44) {
        frame.size.width = 44;
        frame.size.height = 44;
    }
    btn.frame = frame;
    
    UIBarButtonItem *item = [self initWithCustomView:btn];
    item.target = target;
    item.action = action;
    
    return item;
}

- (instancetype)initWithTitle:(NSString *)title
                    textColor:(UIColor *)color
                       target:(id)target
                       action:(SEL)action {
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    if (color) {
        [btn setTitleColor:color forState:UIControlStateNormal];
        [btn setTitleColor:[color colorWithAlphaComponent:0.6] forState:UIControlStateDisabled];
        [btn setTitleColor:[color colorWithAlphaComponent:0.3] forState:UIControlStateHighlighted];
    }
    [btn setTitle:title forState:UIControlStateNormal];
    [btn sizeToFit];
    
    CGRect frame = btn.frame;
    if (frame.size.width < 44) {
        frame.size.width = 44;
        frame.size.height = 44;
    }
    btn.frame = frame;
    
    UIBarButtonItem *item = [self initWithCustomView:btn];
    item.target = target;
    item.action = action;
    
    return item;
}

@end
