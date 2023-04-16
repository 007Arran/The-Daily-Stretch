//
//  DataStore.swift
//  The Daily Stretch
//
//  Created by Arran James on 4/15/23.
//

import Foundation
import SwiftUI
import Combine

struct Task : Identifiable {
    var id = String()
    var taskItem = String()
}

class TaskDataStore: ObservableObject {
    @Published var tasks = [Task]()
}
