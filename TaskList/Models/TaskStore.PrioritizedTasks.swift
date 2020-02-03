//
//  TaskStore.PrioritizedTasks.swift
//  TaskList
//
//  Created by Stephen Wall on 2/3/20.
//  Copyright © 2020 Stephen Wall. All rights reserved.
//

extension TaskStore {
    struct PrioritizedTasks {
        let priority: Task.Priority
        var tasks: [Task]
    }
}

extension TaskStore.PrioritizedTasks : Identifiable {
    var id: Task.Priority { priority }
}
