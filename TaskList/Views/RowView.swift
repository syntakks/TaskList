//
//  RowView.swift
//  TaskList
//
//  Created by Stephen Wall on 2/3/20.
//  Copyright © 2020 Stephen Wall. All rights reserved.
//

import SwiftUI

struct RowView: View {
    @Binding var task: Task
    let checkmark = Image(systemName: "checkmark")
    
    var body: some View {
        NavigationLink(destination: TaskEditingView(task: $task)) {
            if task.completed {
                checkmark
            } else {
                checkmark.hidden()
            }
            Text(task.name)
                .strikethrough(task.completed)
        }
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(task: .constant( Task(name: "To Do") ))
    }
}
