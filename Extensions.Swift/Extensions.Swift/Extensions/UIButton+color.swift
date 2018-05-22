//
//  UIButton+color.swift
//  Extensions.Swift
//
//  Created by Linda Zheng on 2018/5/22.
//  Copyright © 2018年 IceButterfly. All rights reserved.
//

import UIKit

extension UIButton {
    @IBInspectable var normalBackgroundImageColor: UIColor? {
        set {
            self.setBackgroundColor(color: newValue!, forState: .normal)
        }
        get {
            return nil
        }
    }
    
    @IBInspectable var selectBackgroundImageColor: UIColor? {
        set {
            self.setBackgroundColor(color: newValue!, forState: .selected)
        }
        get {
            return nil
        }
    }
}

public extension UIButton{
    public func setBackgroundColor(color:UIColor, forState s: UIControlState){
        self.setBackgroundImage(color.pureImage(), for: s)
    }
    
    public func setColor(color:UIColor, forState s:UIControlState){
        self.setImage(color.pureImage(), for: s)
    }
}
