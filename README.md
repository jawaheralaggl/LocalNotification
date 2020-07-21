# LocalNotification


This is an example of how to add local notification to your app in swift. By using UserNotifications framework provided in IOS SDK.
We can schedule local notification in certain time interval or particular date using UNCalendarNotificationTrigger class.
I used UNTimeIntervalNotificationTrigger, UNMutableNotificationContent, UNNotificationRequest classes provided in SDK.
Also I implement UNUserNotificationCenterDelegate methods in order to show notification when app is in foreground.

https://developer.apple.com/documentation/usernotifications


I set custom actions to the notification that apear after long press. According to apple doc you can use both of UNNotificationAction and 
UNNotificationCategory to make a custom category with two actions
that will let the user respond to a delivered notification without launching the corresponding app

https://developer.apple.com/documentation/usernotifications/declaring_your_actionable_notification_types
