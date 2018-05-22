//
//  ViewLoader.swift
//  Extensions.Swift
//
//  Created by Linda Zheng on 2018/5/22.
//  Copyright © 2018年 IceButterfly. All rights reserved.
//

import UIKit

struct Load {
    
    struct Xib {
        
        static func view<T: UIView>() -> T {
            let str = String(describing: T.self)
            return Bundle.main.loadNibNamed(str, owner: nil, options: nil)?.last as! T
        }
        
        static func controller<T: UIViewController>() -> T {
            let str = String(describing: T.self)
            return T.init(nibName: str, bundle: nil)
        }
    }
    
    struct Storyboard {
        
        static func controller<T: UIViewController>() -> T {
            let str = String(describing: T.self)
            let storyboard = UIStoryboard(name: str, bundle: nil)
            return storyboard.instantiateInitialViewController() as! T
        }
    }
    
}

