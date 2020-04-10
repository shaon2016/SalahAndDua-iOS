//
//  Util.swift
//  SalahAndDua
//
//  Created by Ashiq Pro  on 11/4/20.
//  Copyright © 2020 LastBlade. All rights reserved.
//

import Foundation

struct Util {
    static func formattedTodayDate(withFormatter format : String) -> String {
        let todayDate = Date()
        let formatter = DateFormatter()
        
        formatter.dateFormat = format
        return formatter.string(from: todayDate)
    }
}
