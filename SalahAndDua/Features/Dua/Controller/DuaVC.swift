//
//  DuaVC.swift
//  SalahAndDua
//
//  Created by MacBook Pro  on 14/4/20.
//  Copyright © 2020 LastBlade. All rights reserved.
//

import UIKit

class DuaVC: UITableViewController {

    lazy var duas = Model().duas
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setTitle()
        
        
        tableView.tableFooterView = .none
    }
    
    private func setTitle() {
           title = "Dua"
           let textAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
           navigationController?.navigationBar.titleTextAttributes = textAttributes
       }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return duas.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DuaTableViewCell", for: indexPath) as! DuaTableViewCell
        
        cell.duaLabel.text = duas[indexPath.row].title
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        performSegue(withIdentifier: "DuaDetailsSegue", sender: duas[indexPath.row].detail)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! DuaDetailsVC
        
        destinationVC.duaDetail = sender as? DuaDetail
    }
    
    
}
