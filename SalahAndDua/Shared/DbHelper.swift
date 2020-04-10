//
//  DbHelper.swift
//  SalahAndDua
//
//  Created by MacBook Pro  on 10/4/20.
//  Copyright © 2020 LastBlade. All rights reserved.
//

import Foundation
import SQLite

class DbHelper {
    
    private let dbPath = "mydb.sqlite"
    
    private let calenderTable = Table("Calendar")
    
    // Calendar table columns
    let id = Expression<Int64>("_id")
    let fajr = Expression<String>("fajr")
    let dhuhr = Expression<String>("dhuhr")
    let asr = Expression<String>("asr")
    let magrib = Expression<String>("maghrib")
    let isha = Expression<String>("isha")
    let sunrise = Expression<String>("sunrise")
    let sunset = Expression<String>("sunset")
    let imask = Expression<String>("imask")
    let midnight = Expression<String>("midnight")
    let todayDateEnglish = Expression<String>("today_date_english")
    let todayDateHijri = Expression<String>("today_date_hijri")
    
    private var connection : Connection?
    
    init() {
        openDb()
        createCalendarTable()
    }
    
    func openDb()   {
        let path = NSSearchPathForDirectoriesInDomains(
            .documentDirectory, .userDomainMask, true
        ).first!
        
        do {
            connection = try Connection("\(path)/db.sqlite3")
        } catch {
            print(error)
        }
        
    }
    
    func createCalendarTable() {
        
        do {
            try connection?.run(calenderTable.create { t in
                t.column(id, primaryKey: .autoincrement)
                t.column(fajr)
                t.column(dhuhr)
                t.column(asr)
                t.column(magrib)
                t.column(isha)
                t.column(sunrise)
                t.column(sunset)
                t.column(imask)
                t.column(midnight)
                t.column(todayDateEnglish)
                t.column(todayDateHijri)
            })
        } catch let Result.error(message, code, statement) where code == SQLITE_CONSTRAINT {
            print("constraint failed: \(message), in \(String(describing: statement))")
        } catch let error {
            print("Creation Calendar Table failed: \(error)")
        }
    }
    
    
    func insert(with calendarData : CalendarData) {
        do {
            try connection?.run(calenderTable.insert(
                fajr <- calendarData.timings.fajr,
                dhuhr <- calendarData.timings.dhuhr,
                asr <- calendarData.timings.asr,
                magrib <- calendarData.timings.maghrib,
                isha <- calendarData.timings.isha,
                sunrise <- calendarData.timings.sunrise,
                sunset <- calendarData.timings.sunset,
                imask <- calendarData.timings.imask,
                midnight <- calendarData.timings.midnight,
                todayDateEnglish <- calendarData.date.readable,
                todayDateHijri <- calendarData.date.hijriData.date
            ))
        } catch let Result.error(message, code, statement) where code == SQLITE_CONSTRAINT {
            print("constraint failed: \(message), in \(String(describing: statement))")
        } catch let error {
            print("insertion failed: \(error)")
        }
    }
    
    func getCalendarData(withDate date : String) -> CalendarData? {
        var calendarData : CalendarData?
        do {
            let query = calenderTable.filter(todayDateEnglish == date)
            for calendar in try (connection?.prepare(query))!  {
                
                let timings = Timings(fajr: calendar[fajr], dhuhr: calendar[dhuhr], asr: calendar[asr], maghrib: calendar[magrib], isha: calendar[isha], sunrise: calendar[sunrise], sunset: calendar[sunset], imask: calendar[imask], midnight: calendar[midnight])
                
                let dateData = DateData(readable: calendar[todayDateEnglish], hijriData: HijriData(date: calendar[todayDateHijri]))
                
                calendarData = CalendarData(timings: timings, date: dateData)
            }
        } catch let Result.error(message, code, statement) where code == SQLITE_CONSTRAINT {
            print("constraint failed: \(message), in \(String(describing: statement))")
        } catch let error {
            print("Data read failed for calendar table: \(error)")
        }
        
        return calendarData
    }
    
    func deleteCalendarTable() {
        do {
            try connection?.run(calenderTable.delete())
        } catch let Result.error(message, code, statement) where code == SQLITE_CONSTRAINT {
            print("constraint failed: \(message), in \(String(describing: statement))")
        } catch let error {
            print("Deletion failed for calendar table: \(error)")
        }
    }
}
