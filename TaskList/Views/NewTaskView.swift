//
//  NewTaskView.swift
//  TaskList
//
//  Created by Stephen Wall on 1/30/20.
//  Copyright © 2020 Stephen Wall. All rights reserved.
//

import SwiftUI

struct NewTaskView: View {
    var taskStore: TaskStore
    
    @Environment(\.presentationMode) var presentationMode
    
    @State var task = ""
    @State var priority = Task.Priority.no
    
    var body: some View {
        Form {
            TextField("Task Name", text: $task)
            VStack {
                Text("Priority")
                Picker("Priority", selection: $priority.caseIndex) {
                    ForEach(Task.Priority.allCases.indices) { priorityIndex in
                        Text(Task.Priority.allCases[priorityIndex].rawValue.capitalized)
                        .tag(priorityIndex)
                    }
                }.pickerStyle(SegmentedPickerStyle())
            }
            Button("Add") {
                self.taskStore.prioritizedTasks[self.taskStore.getIndex(for: self.priority)].tasks.append(Task(name: self.task))
                self.presentationMode.wrappedValue.dismiss()
            }.disabled(task.isEmpty)
        }
    }
}

struct NewTaskView_Previews: PreviewProvider {
    static var previews: some View {
        NewTaskView(taskStore: TaskStore())
    }
}
