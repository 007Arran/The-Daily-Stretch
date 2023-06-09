//
//  The_Daily_StretchApp.swift
//  The Daily Stretch
//
//  Created by Arran James on 4/15/23.
//

import SwiftUI

@main
struct The_Daily_StretchApp: App {
    
//    @StateObject private var dataController = DataController()
    @StateObject private var store = GoalStore()
    
    var body: some Scene {
        WindowGroup {
            MainPage(store: store)
        }
    }
}
