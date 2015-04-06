//
//  ViewController.swift
//  Controlling The Keyboard
//
//  Created by Elliott Lui on 3/19/15.
//  Copyright (c) 2015 Elliott Lui. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var inputText: UITextField!
    
    @IBOutlet var label: UILabel!
    
    @IBAction func buttonPressed(sender: AnyObject) {
        
        label.text = inputText.text
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.inputText.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        
        textField.resignFirstResponder()
        return true
    }


}

