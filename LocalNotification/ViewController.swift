//
//  ViewController.swift
//  LocalNotification
//
//  Created by Jawaher Alagel on 7/20/20.
//  Copyright © 2020 Jawaher Alaggl. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // var shortcutItem = UIApplicationShortcutItem(type: "com.jaDanRA.LocalNotification.openList",
    // localizedTitle: "open list")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func setReminder(_ sender: Any) {
        
        let center = UNUserNotificationCenter.current()
        let content = UNMutableNotificationContent()
        content.title = "This is a reminder!"
        content.body = "Check Now!!"
        // content.sound = .default
        
        //Play custom sound
        content.sound = UNNotificationSound.init(named:UNNotificationSoundName(rawValue: "AnyConv.com__sound.caf"))
        
        
        
        // Set Custom Action
        let categoryIdentifier = "reminder.action"
        let check = UNNotificationAction(identifier: "do.check", title: "Check", options: [.foreground])
        let cancel = UNNotificationAction(identifier: "do.cancel", title: "Cancel", options: [])
        let category = UNNotificationCategory(identifier: categoryIdentifier, actions: [check, cancel], intentIdentifiers: [], options: [])
        UNUserNotificationCenter.current().setNotificationCategories([category])
        
        content.categoryIdentifier = categoryIdentifier
        
        
        let notiDate = Calendar.current.dateComponents([.day, .month, .year, .hour, .minute, .second], from: Date().addingTimeInterval(10))
        // let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 20, repeats: false)
        let trigger = UNCalendarNotificationTrigger(dateMatching: notiDate, repeats: true)
        let request = UNNotificationRequest(identifier: "reminder", content: content, trigger: trigger)
        center.add(request) { (error) in
            if error != nil {
                print("error:\(error?.localizedDescription ?? "Error Local Notification" )")
            }
        }
        
    }
    
    func goTo() {
        // if shortcutItem.type == "com.jaDanRA.LocalNotification.openList" {
        
        // performSegue(withIdentifier: "goTo", sender: self)
    }
    
    
}
