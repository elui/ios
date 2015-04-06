//
//  ViewController.swift
//  Navigation Bars
//
//  Created by Elliott Lui on 2/9/15.
//  Copyright (c) 2015 Elliott Lui. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = NSTimer()
    
    var count = 0
    
    @IBOutlet var time: UILabel!
    
    
    @IBAction func start(sender: AnyObject) {
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("startSW"), userInfo: nil, repeats: true)
    }
    
   
   
    @IBAction func pause(sender: AnyObject) {
        timer.invalidate()

    }
    
    @IBAction func stop(sender: AnyObject) {
        count = 0
        timer.invalidate()
        time.text = "0"
    }
    func startSW() {
        count++
        time.text = String(count)
       
    }
    


    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

