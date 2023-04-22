//
//  NotificationView.swift
//  The Daily Stretch
//
//  Created by Arran James on 4/19/23.
//

import SwiftUI
import UserNotifications

struct NotificationView: View {
    var body: some View {
        VStack {
            Button("Request Permission") {
                UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound]) { success, error in
                    if success {
                        print("All set!")
                    } else if let error = error {
                        print(error.localizedDescription)
                    }
                }
            }
            Button("Schedule Notification") {
                let content = UNMutableNotificationContent()
                content.title = "Did you Stretch today?"
                content.body = "If not, time to Stretch!"
                content.sound = UNNotificationSound.default

                // show this notification five seconds from now
//                let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 1, repeats: false)
                var dateComponents = DateComponents()
                dateComponents.calendar = Calendar.current
                
                dateComponents.weekday = 6
                dateComponents.hour = 18
                dateComponents.minute = 56

                let trigger = UNCalendarNotificationTrigger (dateMatching: dateComponents, repeats: true)
                // choose a random identifier
                let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)

                // add our notification request
                UNUserNotificationCenter.current().add(request)
            }
        }
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView()
    }
}
