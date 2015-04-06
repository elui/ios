//
//  ViewController.swift
//  GuessingNumberGame
//
//  Created by Elliott Lui on 12/8/14.
//  Copyright (c) 2014 Elliott Lui. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    @IBOutlet weak var input: UITextField!
    
    
    @IBOutlet weak var responseText: UILabel!
    
    @IBAction func guessButton(sender: AnyObject) {
        
    }
    
    
    @IBAction func buttonPressed(sender: AnyObject) {
        var target = Int(arc4random() % 6)
     
        var guess = input.text.toInt()
       	
        if (guess < target){
            responseText.text = "A little higher..."
        } else if (guess > target){
            responseText.text = "A little lower..."
        } else {
            responseText.text = "Correct!"
        }
        
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}

