//
//  ViewController.swift
//  Stopwatch
//
//  Created by Antrromet on 12/13/15.
//  Copyright © 2015 Antrromet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer = NSTimer()
    
    var isRunning = false
    
    var counter = 0
    
    func start() {
        counter++
        timeLabel.text = "\(counter)"
    }
    
    @IBOutlet var timeLabel: UILabel!
    
    @IBOutlet var startItem: UIBarButtonItem!
    
    @IBAction func startClicked(sender: AnyObject) {
        if(!isRunning){
            print("Started")
            isRunning = true
            timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("start"), userInfo: nil, repeats: true)
        } else {
            print("Already running")
        }
    }

    @IBAction func onPauseClicked(sender: AnyObject) {
        if(isRunning){
            print("Paused")
            isRunning = false
            timer.invalidate()
        } else {
            print("Already Paused")
        }
    }

    @IBAction func resetClicked(sender: AnyObject) {
        print("Resetted")
        isRunning = false
        timer.invalidate()
        counter = 0
        timeLabel.text = "\(counter)"
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

