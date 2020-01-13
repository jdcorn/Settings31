//
//  SettingListTableViewController.swift
//  Settings31
//
//  Created by Jon Corn on 1/13/20.
//  Copyright © 2020 jdcorn. All rights reserved.
//

import UIKit

class SettingListTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return SettingController.shared.settings.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "settingCell", for: indexPath) as? SettingTableViewCell else { return UITableViewCell()}
        
        let setting = SettingController.shared.settings[indexPath.row]
        cell.updateViews(with: setting)

        return cell
    }
    
} // Class end
