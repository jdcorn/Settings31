//
//  SettingTableViewCell.swift
//  Settings31
//
//  Created by Jon Corn on 1/13/20.
//  Copyright © 2020 jdcorn. All rights reserved.
//

import UIKit

class SettingTableViewCell: UITableViewCell {
    
    
    // Outlets
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var settingSwitch: UISwitch!
    
    
    // Actions
    @IBAction func settingSwitchToggled(_ sender: Any) {
        
    }
    
    
    // Functions
    func updateViews(with setting: Setting) {
        
        iconImageView.image = setting.icon
        nameLabel.text = setting.name
        settingSwitch.isOn = setting.isOn
        
        self.settingSwitch.tintColor = settingSwitch.isOn ? .yellow : .white
        self.backgroundColor = settingSwitch.isOn ? .purple : .white
        self.nameLabel.textColor = settingSwitch.isOn ? .yellow : .black
    }
}
