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

        tableView.tableFooterView = .none
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return duas.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DuaTableViewCell", for: indexPath) as! DuaTableViewCell
        
        cell.duaLabel.text = duas[indexPath.row].title
        
        return cell
    }
    
    
}
