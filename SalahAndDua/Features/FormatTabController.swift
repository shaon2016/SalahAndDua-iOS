//
//  FormatTabController.swift
//  SalahAndDua
//
//  Created by MacBook Pro  on 12/4/20.
//  Copyright © 2020 LastBlade. All rights reserved.
//

import UIKit

class FormatTabController {
   static let instance = FormatTabController()
    
    init() {
        
    }
    
    func getFormattedTabController(withTabController tabBarController : UITabBarController) -> UITabBarController {
        
        let homeStoryboard = UIStoryboard(name: "Home", bundle: nil)
        let duaStoryboard = UIStoryboard(name: "Dua", bundle: nil)
        
        let homeVC = homeStoryboard.instantiateViewController(withIdentifier: "HomeVC") as! HomeVC
         let duaVC = duaStoryboard.instantiateViewController(withIdentifier: "DuaVC") as! DuaVC

        let vcData : [(UIViewController, UIImage, UIImage)] = [
                   (homeVC, UIImage(named: "home_tab_icon")!, UIImage(named: "home_selected_tab_icon")!),
                   
                   (duaVC, UIImage(named: "dua_tab_icon")!, UIImage(named: "dua_selected_tab_icon")!),
                   
                   
               ]
               
               let vcs = vcData.map { (vc, defaultImage, selectedImage) -> UINavigationController in
                   
                   let nav = UINavigationController(rootViewController: vc)
                   nav.tabBarItem.image = defaultImage
                   nav.tabBarItem.selectedImage = selectedImage
                
             
                nav.navigationBar.barTintColor = .gray
                
                   return nav
               }
               
               tabBarController.viewControllers = vcs
               tabBarController.tabBar.isTranslucent = false
               // tabBarController.tabBar.barTintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            
               if let items = tabBarController.tabBar.items {
                
            
                
                   for item in items {
                    
                       if let image = item.image {
                           item.image = image.withRenderingMode(.alwaysOriginal)
                       }
                       
                       if let selectedImage = item.selectedImage {
                           item.selectedImage = selectedImage.withRenderingMode(.alwaysOriginal)
                       }
                       
                       item.imageInsets = UIEdgeInsets(top: 6, left: 0, bottom: -6, right: 0)
                   }
               }
        
        return tabBarController
    }
}
