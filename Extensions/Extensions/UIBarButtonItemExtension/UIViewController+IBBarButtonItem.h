//
//  UIViewController+IBBarButtonItem.h
//  Extensions
//
//  Created by Linda Zheng on 2018/2/9.
//  Copyright © 2018年 IceButterfly. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIViewController (IBBarButtonItem)

- (void)setLeftBarButtonItemWithImage:(nullable UIImage *)image
                             leftEdge:(CGFloat)edge
                               target:(nullable id)target
                               action:(nullable SEL)action;

- (void)setLeftBarButtonItemWithTitle:(NSString *)title
                                 font:(nullable UIFont *)font
                            textColor:(nullable UIColor *)color
                             leftEdge:(CGFloat)edge
                               target:(nullable id)target
                               action:(nullable SEL)action;

@end
NS_ASSUME_NONNULL_END
