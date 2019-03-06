//
//  ViewController.swift
//  UserDefaultsExample
//
//  Created by dave76 on 10/01/2019.
//  Copyright © 2019 dave76. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
  
  let userDefaults = UserDefaults.standard
  
  @IBOutlet weak var testSwitch: UISwitch!

  override func viewDidLoad() {
    super.viewDidLoad()
    
    testSwitch.isOn = userDefaults.bool(forKey: "switchState")
  }

  @IBAction func switchAction(_ sender: Any) {
    userDefaults.set(testSwitch.isOn, forKey: "switchState")
  }
  
}

