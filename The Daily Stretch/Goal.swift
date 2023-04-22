//
//  Goal.swift
//  The Daily Stretch
//
//  Created by Arran James on 4/18/23.
//

import Foundation

struct Goal: Identifiable {
    var id = UUID()
    var name: String
    var notes: String
    
}

let testData = [
    Goal(name: "Make List", notes: "Watch Video"),
    Goal(name: "Make Notifications", notes: ""),
]
