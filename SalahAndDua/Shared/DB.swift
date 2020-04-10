//
//  DatabaseManager.swift
//  SalahAndDua
//
//  Created by Ashiq on 9/4/20.
//  Copyright © 2020 LastBlade. All rights reserved.
//

import Foundation
import SQLite3

class DB {
    // Singleton Instance
    static var shared = DB()
    
    private let dbPath = "mydb.sqlite"
    
    private var op : OpaquePointer?
    
    private let calendarTableName = "calendar"
    
    // Calendar table columns
    private let KEY_ID = "_id"
    private let KEY_FAJR = "fajr"
    private let KEY_DHUHR = "dhuhr"
    private let KEY_ASR = "asr"
    private let KEY_MAGHRIB = "maghrib"
    private let KEY_ISHA = "isha"
    private let KEY_SUNRISE = "sunrise"
    private let KEY_SUNSET = "sunset"
    private let KEY_IMASK = "imask"
    private let KEY_MIDNIGHT = "midnight"
    private let KEY_TODAY_DATE_ENGLISH = "today_date_english"
    private let KEY_TODAY_DATE_HIJRI = "today_date_hijri"
    
    init() {
        op = openDatabase()
        createCalendarTable()
    }
    
    private func openDatabase() -> OpaquePointer?
    {
        let fileURL = try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
            .appendingPathComponent(dbPath)
        var db: OpaquePointer? = nil
        if sqlite3_open(fileURL.path, &db) != SQLITE_OK {
            print("error opening database")
            return nil
        }
        else {
            print("Successfully opened connection to database at \(dbPath)")
            return db
        }
    }
    
    func createCalendarTable() {
        let createTableString = """
        CREATE TABLE IF NOT EXISTS \(calendarTableName) (
        \(KEY_ID) INTEGER PRIMARY KEY AUTOINCREMENT,
        \(KEY_FAJR) TEXT,
        \(KEY_DHUHR) TEXT,
        \(KEY_ASR) TEXT,
        \(KEY_MAGHRIB) TEXT,
        \(KEY_ISHA) TEXT,
        \(KEY_SUNRISE) TEXT,
        \(KEY_SUNSET) TEXT,
        \(KEY_IMASK) TEXT,
        \(KEY_MIDNIGHT) TEXT,
        \(KEY_TODAY_DATE_ENGLISH) TEXT,
        \(KEY_TODAY_DATE_HIJRI) TEXT
        );
        """
        var createTableStatement: OpaquePointer? = nil
        
        if sqlite3_prepare_v2(op, createTableString, -1, &createTableStatement, nil) == SQLITE_OK
        {
            if sqlite3_step(createTableStatement) == SQLITE_DONE
            {
                print("calendar table created.")
            } else {
                print("calendar table could not be created.")
            }
        } else {
            print("CREATE TABLE statement could not be prepared.")
        }
        sqlite3_finalize(createTableStatement)
    }
    
    func insert(with calendarData : CalendarData) {
        let insertStatementString = """
        
        INSERT INTO \(calendarTableName) (
        
        \(KEY_FAJR),
        \(KEY_DHUHR),
        \(KEY_ASR),
        \(KEY_MAGHRIB),
        \(KEY_ISHA),
        \(KEY_SUNRISE),
        \(KEY_SUNSET),
        \(KEY_IMASK),
        \(KEY_MIDNIGHT),
        \(KEY_TODAY_DATE_ENGLISH),
        \(KEY_TODAY_DATE_HIJRI)
        
        )
        VALUES (?, ?,?, ?,?, ?,?, ?,?, ?,?);
        """
        
        var insertStatement: OpaquePointer?
        
        if sqlite3_prepare_v2(op, insertStatementString, -1, &insertStatement, nil) ==
            SQLITE_OK {
            
            //let id: Int32 = 1
            let fajr: NSString = calendarData.timings.fajr as NSString
            let dhuhr: NSString = calendarData.timings.dhuhr as NSString
            let asr: NSString = calendarData.timings.asr as NSString
            let maghrib: NSString = calendarData.timings.maghrib as NSString
            let isha: NSString = calendarData.timings.isha as NSString
            let sunrise: NSString = calendarData.timings.sunrise as NSString
            let sunset: NSString = calendarData.timings.sunset as NSString
            let imask: NSString = calendarData.timings.imask as NSString
            let midnight: NSString = calendarData.timings.midnight as NSString
            let todayDateEnglish: NSString = calendarData.date.readable as NSString
            let todayDateHijri: NSString = calendarData.date.hijriData.date as NSString
            
            //sqlite3_bind_int(insertStatement, 1, id)
            sqlite3_bind_text(insertStatement, 1, fajr.utf8String, -1, nil)
            sqlite3_bind_text(insertStatement, 2, dhuhr.utf8String, -1, nil)
            sqlite3_bind_text(insertStatement, 3, asr.utf8String, -1, nil)
            sqlite3_bind_text(insertStatement, 4, maghrib.utf8String, -1, nil)
            sqlite3_bind_text(insertStatement, 5, isha.utf8String, -1, nil)
            sqlite3_bind_text(insertStatement, 6, sunrise.utf8String, -1, nil)
            sqlite3_bind_text(insertStatement, 7, sunset.utf8String, -1, nil)
            sqlite3_bind_text(insertStatement, 8, imask.utf8String, -1, nil)
            sqlite3_bind_text(insertStatement, 9, midnight.utf8String, -1, nil)
            sqlite3_bind_text(insertStatement, 10, todayDateEnglish.utf8String, -1, nil)
            sqlite3_bind_text(insertStatement, 11, todayDateHijri.utf8String, -1, nil)
            
            if sqlite3_step(insertStatement) == SQLITE_DONE {
                print("\nSuccessfully inserted row.")
            } else {
                print("\nCould not insert row.")
            }
        } else {
            print("\nINSERT statement is not prepared.")
        }
        
        sqlite3_finalize(insertStatement)
    }
    
    func getCalendarData(withDate date : String) -> CalendarData? {
        var calendarData : CalendarData?
        let queryStatementString = """
        SELECT * FROM \(calendarTableName) where \(KEY_TODAY_DATE_ENGLISH) = '\(date)';
        """
        
        var queryStatement: OpaquePointer?
        
        if sqlite3_prepare_v2(op, queryStatementString, -1, &queryStatement, nil) ==
            SQLITE_OK {
            
            if sqlite3_step(queryStatement) == SQLITE_ROW {
                
                //let id = sqlite3_column_int(queryStatement, 0)
                
                let fajr = String(describing: String(cString: sqlite3_column_text(queryStatement, 1)))
                let dhuhr = String(describing: String(cString: sqlite3_column_text(queryStatement, 2)))
                let asr = String(describing: String(cString: sqlite3_column_text(queryStatement, 3)))
                let maghrib = String(describing: String(cString: sqlite3_column_text(queryStatement, 4)))
                let isha = String(describing: String(cString: sqlite3_column_text(queryStatement, 5)))
                let sunrise = String(describing: String(cString: sqlite3_column_text(queryStatement, 6)))
                let sunset = String(describing: String(cString: sqlite3_column_text(queryStatement, 7)))
                let imask = String(describing: String(cString: sqlite3_column_text(queryStatement, 8)))
                let midnight = String(describing: String(cString: sqlite3_column_text(queryStatement, 9)))
                let todayDateEnglish = String(describing: String(cString: sqlite3_column_text(queryStatement, 10)))
                let todayDateHijri = String(describing: String(cString: sqlite3_column_text(queryStatement, 11)))
                
                let timings = Timings(fajr: fajr, dhuhr: dhuhr, asr: asr, maghrib: maghrib, isha: isha, sunrise: sunrise, sunset: sunset, imask: imask, midnight: midnight)
                
                let dateData = DateData(readable: todayDateEnglish, hijriData: HijriData(date: todayDateHijri))
                
                calendarData = CalendarData(timings: timings, date: dateData)
            } else {
                print("\nQuery returned no results.")
            }
        } else {
            // 6
            let errorMessage = String(cString: sqlite3_errmsg(op))
            print("\nQuery is not prepared \(errorMessage)")
        }
        // 7
        sqlite3_finalize(queryStatement)
        
        return calendarData
    }
    
    func query() {
        
    }
    
    // Multiple row
    func insertMultiple() {
        let insertStatementString = """
        
        INSERT INTO \(calendarTableName) (
        
        \(KEY_FAJR),
        \(KEY_DHUHR),
        \(KEY_ASR),
        \(KEY_MAGHRIB),
        \(KEY_ISHA),
        \(KEY_SUNRISE),
        \(KEY_SUNSET),
        \(KEY_IMASK),
        \(KEY_MIDNIGHT),
        \(KEY_TODAY_DATE_ENGLISH),
        \(KEY_TODAY_DATE_HIJRI)
        
        )
        VALUES (?, ?,?, ?,?, ?,?, ?,?, ?,?);
        """
        
        var insertStatement: OpaquePointer?
        // 1
        let names: [NSString] = ["Ray", "Chris", "Martha", "Danielle"]
        if sqlite3_prepare_v2(
            op,
            insertStatementString,
            -1,
            &insertStatement,
            nil
            ) == SQLITE_OK {
            print("\n")
            // 2
            for (index, name) in names.enumerated() {
                // 3
                let id = Int32(index + 1)
                sqlite3_bind_int(insertStatement, 1, id)
                sqlite3_bind_text(insertStatement, 2, name.utf8String, -1, nil)
                if sqlite3_step(insertStatement) == SQLITE_DONE {
                    print("Successfully inserted row.")
                } else {
                    print("Could not insert row.")
                }
                // 4
                sqlite3_reset(insertStatement)
            }
            sqlite3_finalize(insertStatement)
        } else {
            print("\nINSERT statement is not prepared.")
        }
    }
    
    // TODO change
    func update() {
        let updateStatementString = "UPDATE Contact SET Name = 'Adam' WHERE Id = 1;"
        
        var updateStatement: OpaquePointer?
        if sqlite3_prepare_v2(op, updateStatementString, -1, &updateStatement, nil) ==
            SQLITE_OK {
            if sqlite3_step(updateStatement) == SQLITE_DONE {
                print("\nSuccessfully updated row.")
            } else {
                print("\nCould not update row.")
            }
        } else {
            print("\nUPDATE statement is not prepared")
        }
        sqlite3_finalize(updateStatement)
    }
    
    // TODO Change
    func delete() {
        let deleteStatementString = "DELETE FROM Contact WHERE Id = 1;"
        
        var deleteStatement: OpaquePointer?
        if sqlite3_prepare_v2(op, deleteStatementString, -1, &deleteStatement, nil) ==
            SQLITE_OK {
            if sqlite3_step(deleteStatement) == SQLITE_DONE {
                print("\nSuccessfully deleted row.")
            } else {
                print("\nCould not delete row.")
            }
        } else {
            print("\nDELETE statement could not be prepared")
        }
        
        sqlite3_finalize(deleteStatement)
    }
    
    func closeDB() {
        sqlite3_close(op)
    }
}
