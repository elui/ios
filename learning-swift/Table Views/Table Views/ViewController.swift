//
//  ViewController.swift
//  Table Views
//
//  Created by Elliott Lui on 3/18/15.
//  Copyright (c) 2015 Elliott Lui. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {

    var cellContent = ["foo", "bar", "baz"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // Sets number of cells in the table
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return cellContent.count
        
    }

    // Will run this code numberOfRowsInSection times, adding table cell with this content here
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        cell.textLabel?.text = cellContent[indexPath.row] // Gets row currently on in table
        return cell
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

