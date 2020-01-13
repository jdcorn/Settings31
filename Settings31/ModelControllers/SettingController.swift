//
//  SettingController.swift
//  Settings31
//
//  Created by Jon Corn on 1/13/20.
//  Copyright © 2020 jdcorn. All rights reserved.
//

import Foundation

class SettingController {
    
    // Properties
    static let shared = SettingController()
    let settings: [Setting] = {
        let iTunes = Setting(name: "iTunes", icon: #imageLiteral(resourceName: "iTunes"), isOn: false)
        let AppStore = Setting(name: "AppStore", icon: #imageLiteral(resourceName: "AppStore"), isOn: false)
        let Books = Setting(name: "Books", icon: #imageLiteral(resourceName: "Books"), isOn: false)
        
        return [iTunes, AppStore, Books]
    }()
    
    // Functions
    func toggleIsOn(for setting: Setting) {
        setting.isOn.toggle()
    }
}
