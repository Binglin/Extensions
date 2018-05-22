//
//  DateExtension.swift
//  Extensions.Swift
//
//  Created by Linda Zheng on 2018/5/22.
//  Copyright © 2018年 IceButterfly. All rights reserved.
//

import Foundation

extension Date {
    
    var isToday: Bool {
        let cal = NSCalendar.current
        let today = Date()
        
        let components = cal.dateComponents(Set(arrayLiteral: Calendar.Component.year, .month, .day), from: self)
        let nowComponent = cal.dateComponents(Set(arrayLiteral: Calendar.Component.year, .month, .day), from: today)
        
        return components.year == nowComponent.year && components.month == nowComponent.month && components.day == nowComponent.day
    }
    
    var isCurrentMonth: Bool {
        let cal = NSCalendar.current
        let today = Date()
        
        let components = cal.dateComponents(Set(arrayLiteral: Calendar.Component.year, .month), from: self)
        let nowComponent = cal.dateComponents(Set(arrayLiteral: Calendar.Component.year, .month), from: today)
        
        return components.year == nowComponent.year && components.month == nowComponent.month
    }
}

