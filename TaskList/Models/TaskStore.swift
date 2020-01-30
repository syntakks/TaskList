//
//  TaskStore.swift
//  TaskList
//
//  Created by Stephen Wall on 1/30/20.
//  Copyright © 2020 Stephen Wall. All rights reserved.
//

class TaskStore {
    var tasks = [
        "Code a SwiftUI app",
        "Book an escape room",
        "Walk the cat",
        "Pick up heavy things and put them down",
        "Make karaoke playlist",
        "Present at iOS meetup group",
        "Climb El Capitan",
        "Learn to make baklava",
        "Play disc golf in every state",
        "100 movie reboot marathon"
        ].map{ Task(name: $0) }
    
}
