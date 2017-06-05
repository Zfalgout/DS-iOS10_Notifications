//
//  ViewController.swift
//  NewNotifications
//
//  Created by Zack Falgout on 6/5/17.
//  Copyright © 2017 Zack Falgout. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //1. REQUEST PERMISSION
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound], completionHandler: {(granted, error) in
            if granted {
                print("Notification access granted")
            } else {
                print(error?.localizedDescription)
            }
            
            //Stopped at 5:28 in the video.  Will pick up the rest at lunch.
        })
    }


}

