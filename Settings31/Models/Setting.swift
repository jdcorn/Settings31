//
//  Setting.swift
//  Settings31
//
//  Created by Jon Corn on 1/13/20.
//  Copyright © 2020 jdcorn. All rights reserved.
//

import UIKit

class Setting {
    
    // Properties
    let name: String
    let icon: UIImage
    var isOn: Bool
    
    // Initializer
    init(name: String, icon: UIImage, isOn: Bool) {
        self.name = name
        self.icon = icon
        self.isOn = isOn
    }
}
