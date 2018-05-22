//
//  UIView+frame.swift
//  Extensions.Swift
//
//  Created by Linda Zheng on 2018/5/22.
//  Copyright © 2018年 IceButterfly. All rights reserved.
//

import UIKit

extension UIView {
    var t_left : CGFloat {
        set {
            var frame : CGRect = self.frame
            frame.origin.x = newValue
            self.frame = frame
        }
        get {
            return self.frame.origin.x
        }
    }
    
    var t_y : CGFloat {
        set {
            var frame : CGRect = self.frame
            frame.origin.y = newValue
            self.frame = frame
        }
        get {
            return self.frame.origin.y
        }
    }
    
    var t_right : CGFloat {
        set {
            var frame : CGRect = self.frame
            frame.origin.x = newValue - frame.size.width
            self.frame = frame
        }
        get {
            return self.frame.origin.x + self.frame.size.width
        }
    }
    
    var t_bottom : CGFloat {
        set {
            var frame : CGRect = self.frame
            frame.origin.y = newValue - frame.size.height
            self.frame = frame
        }
        get {
            return self.frame.origin.y + self.frame.size.height
        }
    }
    
    
    var t_origin : CGPoint {
        set {
            var frame : CGRect = self.frame
            frame.origin = newValue
            self.frame = frame
        }
        get {
            return self.frame.origin
        }
    }
    
}

