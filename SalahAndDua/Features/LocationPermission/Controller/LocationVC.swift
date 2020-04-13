//
//  LocationVC.swift
//  SalahAndDua
//
//  Created by MacBook Pro  on 12/4/20.
//  Copyright © 2020 LastBlade. All rights reserved.
//

import UIKit

class LocationVC: UIViewController {
    
    lazy var locationService = LocationService()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        locationService.newLocation = { [weak self] success in
            switch success {
            case .success(let location):
                MyUserDefault.instance.setUserLoc(withCordinate: location.coordinate)
                
                self?.dismiss(animated: true, completion: nil)
                
                let tabBarController = FormatTabController.instance.getFormattedTabController(withTabController: UITabBarController())
                
                let sceneDelegate =  self?.view.window?.windowScene?.delegate as? SceneDelegate
                sceneDelegate?.window?.rootViewController = tabBarController
                
            case .failure(let error):
                
                assertionFailure("Error getting the users location \(error)")
            }
        }
        
        
        
        
        locationService.didChangeStatus = { [weak self] success in
            if success {
                self?.locationService.getLocation()
            } else {
                if self?.locationService.status == .denied {
                    self?.goToAppSetting()
                }
            }
        }
        
        //        let notificationCenter = NotificationCenter.default
        //        notificationCenter.addObserver(self, selector: #selector(appMovedToForground), name: UIApplication.willEnterForegroundNotification, object: nil)
        //
    }
    
    //    @objc func appMovedToForground() {
    //
    //        locationService.didChangeStatus = { [weak self] success in
    //            if success {
    //                self?.locationService.getLocation()
    //            } else {
    //                self?.goToAppSetting()
    //            }
    //        }
    //
    //        print("Entered forground")
    //    }
    //
    
    private func goToAppSetting() {
        let alertController = UIAlertController (title: "", message: "We need location permission for this app to show location based data. Go to Settings?", preferredStyle: .alert)
        
        let settingsAction = UIAlertAction(title: "Settings", style: .default) { (_) -> Void in
            
            guard let settingsUrl = URL(string: UIApplication.openSettingsURLString) else {
                return
            }
            
            if UIApplication.shared.canOpenURL(settingsUrl) {
                UIApplication.shared.open(settingsUrl, completionHandler: { (success) in
                    print("Settings opened: \(success)") // Prints true
                })
            }
        }
        alertController.addAction(settingsAction)
        let cancelAction = UIAlertAction(title: "Cancel", style: .default) {
            (_) -> Void in
            self.goToHomeScreen()
        }
        alertController.addAction(cancelAction)
        
        present(alertController, animated: true, completion: nil)
        
    }
    
    
    @IBAction func allow(_ sender: Any) {
        locationService.requestAuthorization()
    }
    
    @IBAction func noAnotherTime(_ sender: Any) {
        // It will take you to home screen
        goToHomeScreen()
    }
    
    func goToHomeScreen () {
        UIControl().sendAction(#selector(NSXPCConnection.suspend), to: UIApplication.shared, for: nil)
    }
    
}
