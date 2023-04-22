////
////  goalsView.swift
////  The Daily Stretch
////
////  Created by Arran James on 4/15/23.
////
//
//import SwiftUI
//import Combine
//
//struct goalsView: View {
//    @ObservedObject var taskStore = TaskDataStore()
//    @State var newTask : String = ""
//    
//    var addTaskBar : some View {
//        HStack {
//            TextField("Add Goal: ", text: self.$newTask)
//            Button(action: self.addNewTask, label: {
//                Text("Add")
//            })
//        }
//    }
//    
//    func addNewTask() {
//        taskStore.tasks.append(Task(
//            id: String(taskStore.tasks.count + 1),
//            taskItem: newTask
//        ))
//        self.newTask = ""
//    }
//    
//    var body: some View {
//        NavigationView {
//            VStack {
//                addTaskBar.padding()
//                List {
//                    ForEach(self.taskStore.tasks) { task in
//                        Text(task.taskItem)
//                    }.onDelete(perform: self.deleteTask)
//                }.navigationBarTitle("Goals").navigationBarItems(trailing: EditButton())
//            }
//            
//        }
//    }
//    
//    func deleteTask(at offsets: IndexSet) {
//        taskStore.tasks.remove(atOffsets: offsets)
//    }
//}
//
//struct goalsView_Previews: PreviewProvider {
//    static var previews: some View {
//        goalsView()
//    }
//}
