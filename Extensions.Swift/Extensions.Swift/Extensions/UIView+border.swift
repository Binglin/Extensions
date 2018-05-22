//
//  UIView+border.swift
//  Extensions.Swift
//
//  Created by Linda Zheng on 2018/5/22.
//  Copyright © 2018年 IceButterfly. All rights reserved.
//

import UIKit

public extension UIView{
    
    @IBInspectable var borderWidth:CGFloat {
        get{
            return self.layer.borderWidth
        }
        set(width){
            self.layer.borderWidth = width
        }
    }
    
    @IBInspectable var cornerRadius:CGFloat{
        get{
            return self.layer.cornerRadius
        }
        set{
            self.layer.cornerRadius = newValue
        }
    }
    
    @IBInspectable var borderColor: UIColor{
        get{
            return UIColor(cgColor: self.layer.borderColor ?? UIColor.black.cgColor)
        }
        set{
            self.layer.borderColor = newValue.cgColor
        }
    }
}
