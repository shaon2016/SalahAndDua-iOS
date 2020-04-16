//
//  DuaDetailsVC.swift
//  SalahAndDua
//
//  Created by MacBook Pro  on 15/4/20.
//  Copyright © 2020 LastBlade. All rights reserved.
//

import UIKit

class DuaDetailsVC: UIViewController {

    @IBOutlet weak var duaArabicLabel: UILabel!
     @IBOutlet weak var duaNoteLabel: UILabel!
    @IBOutlet weak var referenceLabel: UILabel!
    @IBOutlet weak var pronunciationLabel: UILabel!
    @IBOutlet weak var translationLabel: UILabel!
    @IBOutlet weak var hadithLabel: UILabel!
    
    var duaDetail : DuaDetail?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateView()
    }
    

    func updateView() {
        duaArabicLabel.text = duaDetail?.duaArabic
    
//        guard let customFont = UIFont(name: "KFGQPC-Uthmanic-Script-HAFS-Regular", size: 30) else {
//            fatalError("""
//                Failed to load the "CustomFont-Light" font.
//                Make sure the font file is included in the project and the font name is spelled correctly.
//                """
//            )
//        }
//        
//        duaArabicLabel.font = customFont
//        
        duaNoteLabel.text = duaDetail?.duaNote
        referenceLabel.text = duaDetail?.reference
        pronunciationLabel.text = duaDetail?.pronunciation
        translationLabel.text = duaDetail?.translation
        hadithLabel.text = duaDetail?.hadithOrBenefit
    }
}
