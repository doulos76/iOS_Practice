//
//  ViewController.swift
//  TableViewExample
//
//  Created by dave76 on 06/03/2019.
//  Copyright © 2019 dave76. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  let alphabet = ["A", "B", "C", "D"]
  @IBOutlet weak var myTableView: UITableView!
  
  let cellId = "cellId"
  override func viewDidLoad() {
    super.viewDidLoad()
   
    myTableView.dataSource = self
    myTableView.delegate = self
    
  }
}

extension ViewController: UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return alphabet.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
    cell.textLabel?.text = alphabet[indexPath.row]
    return cell
  }
}

extension ViewController: UITableViewDelegate {
  
}

