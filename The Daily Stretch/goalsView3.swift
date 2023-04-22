//
//  goalsView3.swift
//  The Daily Stretch
//
//  Created by Arran James on 4/18/23.
//

import SwiftUI

struct goalsView3: View {
    var goals: [Goal] = []
    @ObservedObject var store: GoalStore
    
    var body: some View {
        NavigationView {
            List {
                ForEach(store.goals) { goal in
                    singleGoalView(goal: goal)
                }
                .onMove(perform: moveGoal)
                .onDelete(perform: deleteGoal)
                HStack {
                    Spacer()
                    Text("\(store.goals.count) Goals")
                        .foregroundColor(.secondary)
                    Spacer()
                }
            }
            .navigationTitle("Goals")
            .toolbar {
                #if os(iOS)
                EditButton()
                #endif
                Button("Add", action: makeGoal)
            }
        }
    }
    func makeGoal() {
        withAnimation {
            store.goals.append(Goal(name: "Test Goal", notes: "Testing 123"))
        }
    }
    func moveGoal(from: IndexSet, to: Int) {
        withAnimation{
            store.goals.move(fromOffsets: from, toOffset: to)
        }
    }
    func deleteGoal(offsets: IndexSet) {
        withAnimation {
            store.goals.remove(atOffsets: offsets)
        }
    }
}

struct goalsView3_Previews: PreviewProvider {
    static var previews: some View {
        goalsView3(store: testStore)
    }
}

struct singleGoalView: View {
    var goal: Goal
    var body: some View {
        NavigationLink (destination: Text(goal.name)) {
            VStack {
                Text(goal.name)
                Text(goal.notes)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
    }
}
