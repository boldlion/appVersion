//
//  ViewController.swift
//  AppVersion
//
//  Created by Bold Lion on 28.09.18.
//  Copyright © 2018 Bold Lion. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var versionLabel: UILabel!
    let kVersion       = "CFBundleShortVersionString"
    let kBuildNumber   = "CFBundleVersion"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        versionLabel.text = getAppversion()
    }
    
    func getAppversion() -> String {
        
        let infoDictionary = Bundle.main.infoDictionary!
        let version        = infoDictionary[kVersion] as! String
        let build          = infoDictionary[kBuildNumber] as! String
        return "App version: " + version + "." + build
    }

}

