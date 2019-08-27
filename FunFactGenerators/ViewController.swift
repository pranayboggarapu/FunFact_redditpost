//
//  ViewController.swift
//  FunFactGenerators
//
//  Created by Pranay Boggarapu on 8/26/19.
//  Copyright © 2019 Pranay Boggarapu. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    var data: [String]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        data = APIClient.getFunFacts()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (data?.count)!
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "dataCell", for: indexPath)
        cell.textLabel?.text = data![indexPath.row]
        return cell
    }
    
    
    


}

