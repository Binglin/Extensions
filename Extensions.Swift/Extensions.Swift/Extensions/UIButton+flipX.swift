//
//  UIButton+flipX.swift
//  Extensions.Swift
//
//  Created by Linda Zheng on 2018/5/22.
//  Copyright © 2018年 IceButterfly. All rights reserved.
//

import UIKit

extension UIButton{
    func flipX() {
        self.transform = CGAffineTransform(scaleX: -1.0, y: 1)
        self.titleLabel?.transform = CGAffineTransform(scaleX: -1.0, y: 1)
        self.imageView?.transform = CGAffineTransform(scaleX: -1.0, y: 1)
    }
}
