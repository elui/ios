//
//  ViewController.swift
//  Example App
//
//  Created by Elliott Lui on 11/25/14.
//  Copyright (c) 2014 Elliott Lui. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var primaryLabel: UILabel!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func buttonPressed(sender: AnyObject) {
       
        var humanYears = textField.text.toInt()
        
        if (humanYears != nil){
            var catYears = humanYears! * 7
            resultLabel.text = "Cat is \(String(catYears)) years old"
        } else {
            resultLabel.text = "Invalid year"
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
