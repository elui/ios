//
//  ViewController.swift
//  Times Tables
//
//  Created by Elliott Lui on 3/18/15.
//  Copyright (c) 2015 Elliott Lui. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {

    var cellContent = ["1","2","","4","5"]
    @IBOutlet var sliderValue: UISlider!
    
    @IBOutlet var table: UITableView!
    @IBAction func sliderMoved(sender: AnyObject) {
        sliderValue.setValue(round(sliderValue.value), animated: false)
        table.reloadData()
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
        return 20
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        cell.textLabel?.text = String(Int(sliderValue.value) * indexPath.row)
        return cell
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

