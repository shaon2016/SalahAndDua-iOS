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
    @IBOutlet weak var todayDateEnglishLabel: UILabel!
    @IBOutlet weak var todayDateHijriLabel: UILabel!
    @IBOutlet weak var nowTimeLabel: UILabel!
    @IBOutlet weak var sunriseLabel: UILabel!
    @IBOutlet weak var sunsetLabel: UILabel!
    @IBOutlet weak var sahriLabel: UILabel!
    @IBOutlet weak var iftarLabel: UILabel!
    @IBOutlet weak var fajrLabel: UILabel!
    @IBOutlet weak var dhuhrLabel: UILabel!
    @IBOutlet weak var asrLabel: UILabel!
    @IBOutlet weak var maghribLabel: UILabel!
    @IBOutlet weak var ishaLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // If there is no data in db
        // get data from server
        if DbHelper.shared.getCalendarData(withDate: Util.formattedTodayDate(withFormatter: "dd MMM yyyy")) == nil {
            getSalahCalendarData()
        } else {
            showCalendarData()
        }
        
        
        
    }
    
    func getSalahCalendarData()  {
        LLSpinner.spin()
        
        let service = MoyaProvider<ApiService>()
        let decoder = JSONDecoder()
        
        //service.request(.calendarByCity(city: "Chittagong", country: "Bangladesh", method: 2))
        service.request(.calendarByLatLon(lat: 22.3607, lon: 91.7928, method: 1))
        {
            //[weak self]
            (result) in
            
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
                            
                            DispatchQueue.main.async {
                                LLSpinner.stop()
                                self.showCalendarData()
                            }
                        }
                    }
                    
                }
            case .failure(let error) :
                LLSpinner.stop()
                print(error)
            }
        }
        
    }
    
    private func showCalendarData() {
        DispatchQueue.global(qos: .userInteractive).async {
            let calData = DbHelper.shared.getCalendarData(withDate: Util.formattedTodayDate(withFormatter: "dd MMM yyyy"))
            
            
            DispatchQueue.main.async {
                self.todayDateEnglishLabel.text = "Today: \(String(describing: calData?.date.readable ?? ""))"
                self.todayDateHijriLabel.text = "Hijri: \(String(describing: calData?.date.hijriData.date ?? ""))"
                self.fajrLabel.text = calData?.timings.fajr.deletingSuffix("(+06)")
                self.dhuhrLabel.text = calData?.timings.dhuhr.deletingSuffix("(+06)")
                self.asrLabel.text = calData?.timings.asr.deletingSuffix("(+06)")
                self.maghribLabel.text = calData?.timings.maghrib.deletingSuffix("(+06)")
                self.ishaLabel.text = calData?.timings.isha.deletingSuffix("(+06)")
                self.sunriseLabel.text = calData?.timings.sunrise.deletingSuffix("(+06)")
                self.sunsetLabel.text = calData?.timings.sunset.deletingSuffix("(+06)")
                self.iftarLabel.text = calData?.timings.maghrib.deletingSuffix("(+06)")
                self.sahriLabel.text = calData?.timings.imask.deletingSuffix("(+06)")
                
                let date = Date()
                self.nowTimeLabel.text = "\(date.hour) : \(date.minute)"
            }
            
            
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.navigationBar.barTintColor = .gray
    }
    
    
    
    
}

extension String {
    func deletingSuffix(_ suffix: String) -> String {
        guard self.hasSuffix(suffix) else { return self }
        return String(self.dropLast(suffix.count))
    }
}
