//
//  ViewController.swift
//  Is it Prime
//
//  Created by Elliott Lui on 1/15/15.
//  Copyright (c) 2015 Elliott Lui. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet var inputField: UITextField!
   
    @IBOutlet var responseText: UILabel!
 
    @IBAction func buttonPressed(sender: AnyObject) {
        var input = inputField.text.toInt()
        
        var isPrime : Bool = true
        var highestDenom = 0
        for (var i = 2; i < input; i++) {
            if (input! % i == 0) {
                isPrime = false
                highestDenom = i
            }
        }
       
        if (isPrime) {
            responseText.text = "It is a prime number"
        } else {
            responseText.text = "Not a prime bro: \(highestDenom)"
        }
        
       
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

