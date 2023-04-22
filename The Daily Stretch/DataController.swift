//
//  DataController.swift
//  The Daily Stretch
//
//  Created by Arran James on 4/15/23.
//

//import Foundation
//import CoreData
//
//class DataController: ObservableObject {
//    let container = NSPersistentContainer(name: "GoalsModel")
//    
//    init() {
//        container.loadPersistentStores {desc, error in
//            if let error = error {
//                print("Failed to load the data \(error.localizedDescription)")
//            }
//        }
//    }
//    
//    func save(context: NSManagedObjectContext) {
//        do {
//            try context.save()
//        } catch {
//            print("Did not save")
//        }
//    }
//    
//    func addGoal(name: String, context: NSManagedObjectContext) {
//        let goal = Goal(context: context)
//        goal.id = UUID()
//        goal.date = Date()
//        goal.goalName = name
//        
//        save(context: context)
//    }
//    
//    func editGoal(goal: Goal, name: String, context: NSManagedObjectContext) {
//        goal.date = Date()
//        goal.goalName = name
//        
//        save(context: context)
//    }
//    
//}
