//
//  UIColor+image.swift
//  Extensions.Swift
//
//  Created by Linda Zheng on 2018/5/22.
//  Copyright © 2018年 IceButterfly. All rights reserved.
//

import UIKit

public extension UIColor{
    public func pureImage() -> UIImage{
        let rect = CGRect(x: 0, y: 0, width: 2, height: 2);
        UIGraphicsBeginImageContext(rect.size);
        let context = UIGraphicsGetCurrentContext()!;
        context.setFillColor(self.cgColor);
        context.fill(rect);
        let pureImage = UIGraphicsGetImageFromCurrentImageContext()!;
        UIGraphicsEndImageContext();
        return pureImage
    }
    
    public func cornerRadiusImage(radius: CGFloat) -> UIImage{
        let scale = UIScreen.main.scale
        let rect = CGRect(x: 0, y: 0, width: radius * 2 * scale, height: radius * 2 * scale);
        UIGraphicsBeginImageContext(rect.size);
        let context = UIGraphicsGetCurrentContext()!;
        context.setFillColor(self.cgColor);
        context.fillEllipse(in: rect);
        let pureImage = UIGraphicsGetImageFromCurrentImageContext()!;
        UIGraphicsEndImageContext();
        return pureImage.stretchableImage(withLeftCapWidth: Int(radius * scale), topCapHeight: Int(radius * scale))
    }
    
    func getDashImage() -> UIImage {
        
        let size = CGSize(width: 20, height: 1)
        
        UIGraphicsBeginImageContext(size);
        let context = UIGraphicsGetCurrentContext()
        
        //创建并设置路径
        let path = CGMutablePath()
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to:CGPoint(x: 20, y: 0))
        
        //添加路径到图形上下文
        context?.addPath(path)
        
        //设置笔触颜色
        context?.setStrokeColor(self.cgColor)
        //设置笔触宽度
        context?.setLineWidth(1)
        
        //虚线每个线段的长度与间隔
        let lengths: [CGFloat] = [10, 10]
        //设置虚线样式
        context?.setLineDash(phase: 0, lengths: lengths)
        
        //绘制路径
        context?.strokePath()
        
        let pureImage = UIGraphicsGetImageFromCurrentImageContext()!;
        UIGraphicsEndImageContext();
        return pureImage
    }
}
