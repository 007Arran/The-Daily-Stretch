////
////  ContentView.swift
////  The Daily Stretch
////
////  Created by Arran James on 4/15/23.
////
//
//import SwiftUI
//import Combine
//
//struct goalsView2: View {
//    @ObservedObject var goalStore = GoalDataStore()
//    
//    @State var newGoal : String = ""
//    
////    @State private var name = ""
////    @State r=private var showingAddView = false
//    
//    var addGoal: some View {
//        HStack {
//            TextField("Add Goal: ", text: self.$newGoal)
//            Button(action: self.addNewGoal, label: {
//                Text("Add New")
//            })
//        }
//    }
//    
//    var body: some View {
//        NavigationView {
//            // A VStack arranges the elements vertically.
//            VStack {
//                // Here, we call the function, addTaskBar.
//                addTaskBar.padding()
//                // A List is used to present data in a single column.
//                List {
//                    // ForEach is used to loop over a collection of items to create views.
//                    ForEach(self.goalStore.goals) { task in
//                        // The Task string is displayed as text.
//                        Text(goal.goalItem)
//                    }.onDelete(perform: self.deleteGoal) // We also define a delete event that can performs the deleteTask function.
//                }.navigationBarTitle("Goals").navigationBarItems(trailing: EditButton())
//                // We name the navbar as Tasks and add an edit button (this is provided by the SwiftUI library)
//            }
//        }
//    }
//}
