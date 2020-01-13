//
//  SettingListTableViewController.swift
//  Settings31
//
//  Created by Jon Corn on 1/13/20.
//  Copyright © 2020 jdcorn. All rights reserved.
//

import UIKit

class SettingListTableViewController: UITableViewController, SettingCellDelegate {

    // Protocol functions
    func settingSwtichTapped(for cell: SettingTableViewCell) {
        // Find the index path of the cell that was passed in to the function
        guard let indexPath = tableView.indexPath(for: cell) else { return }
        // Using that indexPath, we find the setting for that cell
        let setting = SettingController.shared.settings[indexPath.row]
        // toggle the isOn property for that setting
        SettingController.shared.toggleIsOn(for: setting)
        // update the cell views
        cell.updateViews(with: setting)
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return SettingController.shared.settings.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "settingCell", for: indexPath) as? SettingTableViewCell else { return UITableViewCell()}
        
        let setting = SettingController.shared.settings[indexPath.row]
        cell.updateViews(with: setting)
        cell.cellDelegate = self
        
        return cell
    }
    
} // Class end
