//
//  LandingVC.swift
//  DriveEngine
//
//  Created by Vaishnav C on 5/5/20.
//  Copyright © 2020 Vaishnav C. All rights reserved.
//

import Foundation
import UIKit


class LandingVC: UIViewController {
    
    //MARK: Outlets
    @IBOutlet var listTableView: UITableView!
    
    override func viewDidLoad() {
        setupTableView()
    }
    
    func setupTableView() {
        listTableView.delegate = self
        listTableView.dataSource = self
    }
    
}


extension LandingVC: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "DrivesTableViewCell") as? DrivesTableViewCell else { return
            UITableViewCell()
        }
        return cell
    }
    
}
