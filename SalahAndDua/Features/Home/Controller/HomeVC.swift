//
//  HomeVC.swift
//  SalahAndDua
//
//  Created by MacBook Pro  on 6/4/20.
//  Copyright © 2020 LastBlade. All rights reserved.
//

import UIKit
import Moya


class HomeVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getSalahCalendarData()
    }
    
    func getSalahCalendarData()  {
        let service = MoyaProvider<ApiService>()
        let decoder = JSONDecoder()
        
        service.request(.calendarByCity(city: "Chittagong", country: "Bangladesh", method: 2)) {[weak self] (result) in
            
            guard let strongSelf = self else {
                return
            }
            
            switch result {
            case .success(let response) :
                if let calenders = try? decoder.decode(Calendar.self, from: response.data) {
                    print(calenders.data[0].date.hijriData.date)
                }
            case .failure(let error) :
                print(error)
            }
        }
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.navigationBar.barTintColor = .gray
    }
    
    
    
    
}
