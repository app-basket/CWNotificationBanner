//
//  ViewController.swift
//  CWNotificationBanner
//
//  Created by Charlie Williams on 04/16/2016.
//  Copyright (c) 2016 Charlie Williams. All rights reserved.
//

import CWNotificationBanner

class ViewController: UIViewController {

    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        let message = Message(text: "Hello there", action: nil)
        
        NotificationBanner.showMessage(message)
    }
    
    var count: Int = 0
    @IBAction func sendPushPressed(sender: UIButton) {
        
        let message = Message(text: "Hello there, this is message \(count)", action: {
            
        })
        
        NotificationBanner.showMessage(message)
        
        count += 1
    }
}
