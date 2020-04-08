//
//  HomeService.swift
//  SalahAndDua
//
//  Created by MacBook Pro  on 8/4/20.
//  Copyright © 2020 LastBlade. All rights reserved.
//

import Foundation
import Moya

enum ApiService {
    case calendarByLatLon(lat : Double, lon : Double, method : Int)
    case calendarByCity(city : String, country : String, method : Int)
}


extension ApiService : TargetType {

    
    var baseURL: URL {
        return URL(string: "https://api.aladhan.com/v1/")!
    }
    
    var path: String {
        switch self {
        case .calendarByLatLon:
            return "calendar"
        case .calendarByCity:
            return "calendarByCity"
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .calendarByLatLon : return .get
        case .calendarByCity : return .get
        }
    }
    
    var sampleData: Data {
        return Data()
    }
    
    var task: Task {
        switch self {
        case let .calendarByLatLon(lat,lon,method):
            return .requestParameters(parameters: [
                "latitude" : lat,
                "longitude": lon,
                "method" : method ], encoding: URLEncoding.default)
        case let .calendarByCity(city,country,method):
            return .requestParameters(parameters: [
                "city" : city,
                "country": country,
                "method" : method ], encoding: URLEncoding.default)
        }
    }
    
    var headers: [String : String]? {
        return nil
    }
    
    
}
