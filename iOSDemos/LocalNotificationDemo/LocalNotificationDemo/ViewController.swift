//
//  ViewController.swift
//  LocalNotificationDemo
//
//  Created by Varun on 26/02/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController, UNUserNotificationCenterDelegate {

    @IBOutlet var txtTtile : UITextField!
    @IBOutlet var txtBody : UITextField!
    @IBOutlet var txtHours : UITextField!
    @IBOutlet var txtMinuts : UITextField!

    var center : UNUserNotificationCenter?

    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    @IBAction func createLocalNotification(_ sender: UIButton) {
        
        let content = UNMutableNotificationContent()
        content.title = NSString.localizedUserNotificationString(forKey: txtTtile.text!, arguments: nil)
        content.body = NSString.localizedUserNotificationString(forKey: txtBody.text!, arguments: nil)
        content.sound = UNNotificationSound.default()
        
        var dateInfo = DateComponents()
        dateInfo.hour = Int(txtHours.text!)
        dateInfo.minute = Int(txtMinuts.text!)
        let trigger = UNCalendarNotificationTrigger(dateMatching: dateInfo, repeats: false)
        
        let request = UNNotificationRequest(identifier: "MorningAlarm", content: content, trigger: trigger)
        
        center = UNUserNotificationCenter.current()
        center?.delegate = self
        center?.add(request) { (error : Error?) in
            if let theError = error {
                print(theError.localizedDescription)
            }
        }
    }
    
    func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        
        let title = notification.request.content.title
        let body = notification.request.content.body
        
        let alert = UIAlertController(title: title, message: body, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (OK) in
            
        }))
        self.present(alert, animated: true, completion: nil)
        
        completionHandler(UNNotificationPresentationOptions.sound)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

