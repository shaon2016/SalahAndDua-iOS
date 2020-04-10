//
//  HomeVC.swift
//  SalahAndDua
//
//  Created by Ashiq  on 6/4/20.
//  Copyright © 2020 LastBlade. All rights reserved.
//

import UIKit
import Moya


class HomeVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        getSalahCalendarData()
        
        
        showCalendarData()
    }
    
    func getSalahCalendarData()  {
       LLSpinner.spin()
        
        let service = MoyaProvider<ApiService>()
        let decoder = JSONDecoder()
        
        service.request(.calendarByCity(city: "Chittagong", country: "Bangladesh", method: 2)) {
            //[weak self]
            (result) in
            
            LLSpinner.stop()
           
//            guard let strongSelf = self else {
//                return
//            }
            
            switch result {
            case .success(let response) :
                if let calender = try? decoder.decode(Calendar.self, from: response.data) {
                    
                    //print(calender.data)
                    
                    if calender.code == 200 {
                        DispatchQueue.global(qos: .background).async {
                            for cal in calender.data {
                                DbHelper.shared.insert(with: cal)
                            }
                        }
                    }
                
                }
            case .failure(let error) :
                
                print(error)
            }
        }
        
    }
    
    private func showCalendarData() {
        DispatchQueue.global(qos: .userInteractive).async {
            let calData = DbHelper.shared.getCalendarData(withDate: Util.formattedTodayDate(withFormatter: "dd MMM yyyy"))
            
            
            
            
            
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.navigationBar.barTintColor = .gray
    }
    
    
    
    
}
