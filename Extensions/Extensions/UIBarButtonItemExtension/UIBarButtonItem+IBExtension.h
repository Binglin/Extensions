//
//  UIBarButtonItem+IBExtension.h
//  Extensions
//
//  Created by Linda Zheng on 2018/2/9.
//  Copyright © 2018年 IceButterfly. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIBarButtonItem (IBExtension)

- (instancetype)initWithImage:(nullable UIImage *)image
                       target:(nullable id)target
                       action:(nullable SEL)action;

- (instancetype)initWithTitle:(nullable NSString *)title
                    textColor:(nullable UIColor *)color
                       target:(nullable id)target
                       action:(nullable SEL)action;

@end
NS_ASSUME_NONNULL_END
