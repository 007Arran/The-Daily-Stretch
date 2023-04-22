//
//  GoalStore.swift
//  The Daily Stretch
//
//  Created by Arran James on 4/18/23.
//

import Foundation

class GoalStore: ObservableObject {
    @Published var goals: [Goal]
    
    init(goals: [Goal] = []) {
        self.goals = goals
    }
}

let testStore = GoalStore(goals: testData)
