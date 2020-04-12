//
//  MyUserDefault.swift
//  SalahAndDua
//
//  Created by Ashiq  on 11/4/20.
//  Copyright © 2020 LastBlade. All rights reserved.
//

import Foundation
import CoreLocation

struct MyUserDefault {
    static let instance = MyUserDefault()
    private let myDefault = UserDefaults.standard

    private let LAT_KEY = "lat"
    private let LON_KEY = "lon"
    
    func setUserLoc(withCordinate cordinate : CLLocationCoordinate2D) {
        myDefault.set(cordinate.latitude, forKey: LAT_KEY)
        myDefault.set(cordinate.longitude, forKey: LON_KEY)
        
        myDefault.synchronize()
    }
    
    func getLat()  {
        myDefault.double(forKey: LAT_KEY)
    }
    
    
    func getLon()  {
        myDefault.double(forKey: LON_KEY)
    }
}
