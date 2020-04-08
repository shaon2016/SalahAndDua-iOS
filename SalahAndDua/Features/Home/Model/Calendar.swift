//
//  Calendar.swift
//  SalahAndDua
//
//  Created by MacBook Pro  on 8/4/20.
//  Copyright © 2020 LastBlade. All rights reserved.
//

import Foundation

struct Calendar : Codable {
    let code : Int
    let data : [CalendarData]
}

struct CalendarData :  Codable {
    let timings : Timings
    let date : DateData
}

struct Timings : Codable {

    let fajr : String
    let dhuhr : String
    let asr : String
    let maghrib : String
    let isha : String

    let sunrise : String
    let sunset : String

    let imask : String

    let midnight : String

    enum CodingKeys : String, CodingKey {
        case fajr = "Fajr"
        case dhuhr = "Dhuhr"
        case asr = "Asr"
        case maghrib = "Maghrib"
        case isha = "Isha"
//
        case sunrise = "Sunrise"
        case sunset = "Sunset"
//
        case imask = "Imsak"
//
        case midnight = "Midnight"
    }
}

struct DateData : Codable {
    let readable : String
    let hijriData : HijriData
    
    enum CodingKeys : String, CodingKey {
        case readable
        case hijriData = "hijri"
    }
}

struct HijriData : Codable {
    let date : String
}
