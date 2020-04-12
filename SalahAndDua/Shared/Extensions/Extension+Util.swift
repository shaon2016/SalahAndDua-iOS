//
//  Extension+Util.swift
//  SalahAndDua
//
//  Created by MacBook Pro  on 11/4/20.
//  Copyright © 2020 LastBlade. All rights reserved.
//

import Foundation

extension Date {
    var hour : Int  {
        let date = Date()
        let calendar = NSCalendar.current
        let hour = calendar.component(.hour, from: date)
        
        return hour
    }
    
    var minute : Int {
        let date = Date()
        let calendar = NSCalendar.current
        let m = calendar.component(.minute, from: date)
        
        return m
    }
    
    
    var dayofTheWeek: String {
        let dayNumber = NSCalendar.current.component(.weekday, from: self)
        // day number starts from 1 but array count from 0
        return ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"][dayNumber - 1]
    }
    
    
}
