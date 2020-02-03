//
//  SectionView.swift
//  TaskList
//
//  Created by Stephen Wall on 2/3/20.
//  Copyright © 2020 Stephen Wall. All rights reserved.
//

import SwiftUI

struct SectionView: View {
    @Binding var prioritizedTasks: TaskStore.PrioritizedTasks
    
    var body: some View {
        Section(header: Text("\(prioritizedTasks.priority.rawValue.capitalized) Priority")) {
            ForEach(prioritizedTasks.tasks) { index in
                RowView(task: self.$prioritizedTasks.tasks[index])
            }
            .onDelete { indexSet in
                self.prioritizedTasks.tasks.remove(atOffsets: indexSet)
            }
            .onMove { sourceIndices, destinationIndex in
                self.prioritizedTasks.tasks.move(fromOffsets: sourceIndices, toOffset: destinationIndex)
            }
        }
        
    }
}

