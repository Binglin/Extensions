//
//  UIViewController+lifeCycle.swift
//  Extensions.Swift
//
//  Created by Linda Zheng on 2018/5/22.
//  Copyright © 2018年 IceButterfly. All rights reserved.
//

import UIKit

var swizzleViewController: Bool!

extension UIViewController {
    
    open override class func initialize() {
        
        if swizzleViewController == nil {
            swizzleViewController = true
            runtime_exchangeInstanceMethod(cls: self, origin: #selector(UIViewController.viewDidLoad), swizzle: #selector(UIViewController.gb_viewDidLoad))
        }
    }
    
    
    func gb_viewDidLoad(){
        self.gb_viewDidLoad()
        
        self.gb_swizzle_configureView()
        
        //这里设置self.view.backgroundColor 界面会不显示 :(
    }
    
    func gb_swizzle_configureView(){
        
        guard let count = self.navigationController?.viewControllers.count, count > 1 else {
            return;
        }
        
        /*使用left bar button 滑动返回会失效 :( */
        self.setleftBarbuttonItem(image: #imageLiteral(resourceName: "返回"))
    }
    
    
}

func runtime_exchangeInstanceMethod(cls: AnyClass, origin: Selector, swizzle: Selector){
    let originalMethod = class_getInstanceMethod(cls, origin)
    let swizzledMethod = class_getInstanceMethod(cls, swizzle)
    method_exchangeImplementations(originalMethod, swizzledMethod);
}


