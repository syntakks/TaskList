//
//  Task.swift
//  TaskList
//
//  Created by Stephen Wall on 1/30/20.
//  Copyright © 2020 Stephen Wall. All rights reserved.
//
import Foundation

struct Task: Identifiable {
    let id = UUID()
    var name: String
    var completed = false
}
