//
//  TaskEditingView.swift
//  TaskList
//
//  Created by Stephen Wall on 2/3/20.
//  Copyright © 2020 Stephen Wall. All rights reserved.
//

import SwiftUI

struct TaskEditingView: View {
    @Binding var task: Task
    
    var body: some View {
        Form {
            TextField("Name", text: $task.name)
            Toggle("Completed", isOn: $task.completed)
        }
    }
}

struct TaskEditingView_Previews: PreviewProvider {
    static var previews: some View {
        TaskEditingView(task: .constant( Task(name: "To Do") ))
    }
}
