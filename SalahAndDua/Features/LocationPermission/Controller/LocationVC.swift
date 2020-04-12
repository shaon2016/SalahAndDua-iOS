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
                
//                guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
//                  let sceneDelegate = windowScene.delegate as? SceneDelegate
//                else {
//                  return
//                }
                let sceneDelegate =  self?.view.window?.windowScene?.delegate as? SceneDelegate
                sceneDelegate?.window?.rootViewController = tabBarController
            
            case .failure(let error):
                
               assertionFailure("Error getting the users location \(error)")
            }
        }
        
        locationService.didChangeStatus = { [weak self] success in
            if success {
                self?.locationService.getLocation()
            }
        }
    }
    

    @IBAction func allow(_ sender: Any) {
        locationService.requestAuthorization()
    }
    
    @IBAction func noAnotherTime(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
