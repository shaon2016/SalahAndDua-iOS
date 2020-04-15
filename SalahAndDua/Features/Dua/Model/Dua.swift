//
//  Dua.swift
//  SalahAndDua
//
//  Created by MacBook Pro  on 14/4/20.
//  Copyright © 2020 LastBlade. All rights reserved.
//

import Foundation

struct Model {
    var duas : [Dua] {
        var duas_ = [Dua]()
        
        duas_.append(Dua(title: "Dua for forgiveness - Istighfar", detail: DuaDetail(duaArabic: """
         أسْتَغْفِرُ اللَّهَ
                 \n
                     2 No dua\n
                     رَبَّنَآ إنَّنَآ ءَاَمنَّا فَاغْفِرْ لَنَا ذُنُوبَنَا وَ قِنَا عَذَابَ النَّارِ
                 \n
          3 no dua\n
         سُبْحَنَكَ تُبْتُ إلَيْكَ وَ أنَاْ أوَّلُ الْمُؤْمِنِينَ
         \n 4 no dua\n
         اللَّهُمَّ اغْفِرْ لِي ذَنْبِي كُلَّهُ، دِقَّهُ وَجِلَّهُ، وَأَوَّلَهُ وَآخِرَهُ وَعَلَانِيَتَهُ وَسِرَّهُ
                
        """, duaNote: "", reference: "", pronunciation: "", translation: "", hadithOrBenefit: "")))
      
        
//        duas_.append(Dua(title: "At the beginning of making wudu", detail: DuaDetail(duaArabic: <#T##String#>, duaNote: <#T##String#>, reference: <#T##String#>, pronunciation: <#T##String#>, translation: <#T##String#>, hadithOrBenefit: <#T##String#>)))
//
//
//        duas_.append(Dua(title: "On completion of wudu", detail: DuaDetail(duaArabic: <#T##String#>, duaNote: <#T##String#>, reference: <#T##String#>, pronunciation: <#T##String#>, translation: <#T##String#>, hadithOrBenefit: <#T##String#>)))
//
//
//        duas_.append(Dua(title: "When entering the Masjid", detail: DuaDetail(duaArabic: <#T##String#>, duaNote: <#T##String#>, reference: <#T##String#>, pronunciation: <#T##String#>, translation: <#T##String#>, hadithOrBenefit: <#T##String#>)))
//
//
//        duas_.append(Dua(title: "After completion of prayer in Masjid", detail: DuaDetail(duaArabic: <#T##String#>, duaNote: <#T##String#>, reference: <#T##String#>, pronunciation: <#T##String#>, translation: <#T##String#>, hadithOrBenefit: <#T##String#>)))
//
//
//        duas_.append(Dua(title: "When coming out of the Masjid", detail: DuaDetail(duaArabic: <#T##String#>, duaNote: <#T##String#>, reference: <#T##String#>, pronunciation: <#T##String#>, translation: <#T##String#>, hadithOrBenefit: <#T##String#>)))
//
//
//        duas_.append(Dua(title: "On hearing the Athan", detail: DuaDetail(duaArabic: <#T##String#>, duaNote: <#T##String#>, reference: <#T##String#>, pronunciation: <#T##String#>, translation: <#T##String#>, hadithOrBenefit: <#T##String#>)))
//
//
//        duas_.append(Dua(title: "After Fajr and Maghrib Prayer", detail: DuaDetail(duaArabic: <#T##String#>, duaNote: <#T##String#>, reference: <#T##String#>, pronunciation: <#T##String#>, translation: <#T##String#>, hadithOrBenefit: <#T##String#>)))
//
//
//        duas_.append(Dua(title: "When breaking fast", detail: DuaDetail(duaArabic: <#T##String#>, duaNote: <#T##String#>, reference: <#T##String#>, pronunciation: <#T##String#>, translation: <#T##String#>, hadithOrBenefit: <#T##String#>)))
//
//
//        duas_.append(Dua(title: "After Iftaar", detail: DuaDetail(duaArabic: <#T##String#>, duaNote: <#T##String#>, reference: <#T##String#>, pronunciation: <#T##String#>, translation: <#T##String#>, hadithOrBenefit: <#T##String#>)))
//
//
//        duas_.append(Dua(title: "Making Iftaar at someone\'s place", detail: DuaDetail(duaArabic: <#T##String#>, duaNote: <#T##String#>, reference: <#T##String#>, pronunciation: <#T##String#>, translation: <#T##String#>, hadithOrBenefit: <#T##String#>)))
//
//        duas_.append(Dua(title: "Al Quran: 2:127", detail: DuaDetail(duaArabic: <#T##String#>, duaNote: <#T##String#>, reference: <#T##String#>, pronunciation: <#T##String#>, translation: <#T##String#>, hadithOrBenefit: <#T##String#>)))
//
//
//
//        duas_.append(Dua(title: "Al Quran: 2:128", detail: DuaDetail(duaArabic: <#T##String#>, duaNote: <#T##String#>, reference: <#T##String#>, pronunciation: <#T##String#>, translation: <#T##String#>, hadithOrBenefit: <#T##String#>)))
//
//        duas_.append(Dua(title: "Al Quran: 2:201", detail: DuaDetail(duaArabic: <#T##String#>, duaNote: <#T##String#>, reference: <#T##String#>, pronunciation: <#T##String#>, translation: <#T##String#>, hadithOrBenefit: <#T##String#>)))
//
//        duas_.append(Dua(title: "Al Quran: 2:250", detail: DuaDetail(duaArabic: <#T##String#>, duaNote: <#T##String#>, reference: <#T##String#>, pronunciation: <#T##String#>, translation: <#T##String#>, hadithOrBenefit: <#T##String#>)))
//
//
//        duas_.append(Dua(title: "Al Quran: 2:286", detail: DuaDetail(duaArabic: <#T##String#>, duaNote: <#T##String#>, reference: <#T##String#>, pronunciation: <#T##String#>, translation: <#T##String#>, hadithOrBenefit: <#T##String#>)))
//
//        duas_.append(Dua(title: "Al Quran: 3:8", detail: DuaDetail(duaArabic: <#T##String#>, duaNote: <#T##String#>, reference: <#T##String#>, pronunciation: <#T##String#>, translation: <#T##String#>, hadithOrBenefit: <#T##String#>)))
//
//        duas_.append(Dua(title: "Al Quran: 3:9", detail: DuaDetail(duaArabic: <#T##String#>, duaNote: <#T##String#>, reference: <#T##String#>, pronunciation: <#T##String#>, translation: <#T##String#>, hadithOrBenefit: <#T##String#>)))
//
//
//        duas_.append(Dua(title: "Al Quran: 3:16", detail: DuaDetail(duaArabic: <#T##String#>, duaNote: <#T##String#>, reference: <#T##String#>, pronunciation: <#T##String#>, translation: <#T##String#>, hadithOrBenefit: <#T##String#>)))
//
//        duas_.append(Dua(title: "Al Quran: 3:53", detail: DuaDetail(duaArabic: <#T##String#>, duaNote: <#T##String#>, reference: <#T##String#>, pronunciation: <#T##String#>, translation: <#T##String#>, hadithOrBenefit: <#T##String#>)))
//
//        duas_.append(Dua(title: "Al Quran: 3:147", detail: DuaDetail(duaArabic: <#T##String#>, duaNote: <#T##String#>, reference: <#T##String#>, pronunciation: <#T##String#>, translation: <#T##String#>, hadithOrBenefit: <#T##String#>)))
//
//
//
//        duas_.append(Dua(title: "Al Quran: 3:191", detail: DuaDetail(duaArabic: "", duaNote: <#T##String#>, reference: <#T##String#>, pronunciation: <#T##String#>, translation: <#T##String#>, hadithOrBenefit: <#T##String#>)))
//
//        duas_.append(Dua(title: "Al Quran: 3:192", detail: DuaDetail(duaArabic: <#T##String#>, duaNote: <#T##String#>, reference: <#T##String#>, pronunciation: <#T##String#>, translation: <#T##String#>, hadithOrBenefit: <#T##String#>)))
//
//        duas_.append(Dua(title: "Al Quran: 3:193", detail: DuaDetail(duaArabic: <#T##String#>, duaNote: <#T##String#>, reference: <#T##String#>, pronunciation: <#T##String#>, translation: <#T##String#>, hadithOrBenefit: <#T##String#>)))
//
//
//
//        duas_.append(Dua(title: "Al Quran: 3:193", detail: DuaDetail(duaArabic: <#T##String#>, duaNote: <#T##String#>, reference: <#T##String#>, pronunciation: <#T##String#>, translation: <#T##String#>, hadithOrBenefit: <#T##String#>)))
//
//        duas_.append(Dua(title: "Al Quran: 3:194", detail: DuaDetail(duaArabic: <#T##String#>, duaNote: <#T##String#>, reference: <#T##String#>, pronunciation: <#T##String#>, translation: <#T##String#>, hadithOrBenefit: <#T##String#>)))
//
//        duas_.append(Dua(title: "Al Quran: 5:83", detail: DuaDetail(duaArabic: <#T##String#>, duaNote: <#T##String#>, reference: <#T##String#>, pronunciation: <#T##String#>, translation: <#T##String#>, hadithOrBenefit: <#T##String#>)))
//
//
//        duas_.append(Dua(title: "Al Quran: 7:23", detail: DuaDetail(duaArabic: <#T##String#>, duaNote: <#T##String#>, reference: <#T##String#>, pronunciation: <#T##String#>, translation: <#T##String#>, hadithOrBenefit: <#T##String#>)))
        
        
        return duas_
    }
    
    
}

struct Dua {
    let title : String
    
    let detail : DuaDetail
    
}

struct DuaDetail {
    let duaArabic : String
    let duaNote : String
    let reference : String
    let pronunciation : String
    let translation : String
    let hadithOrBenefit : String
}
