//
//  TaskItem.swift
//  TestProject
//
//  Created by Quentin Cornu on 30/11/2022.
//

import Foundation

struct TaskItem {
    let name: String
    let dueDate: Date
    let priority: Prioriry?
    let isDone: Bool
    
    enum Prioriry {
        case high
        case medium
        case low
    }
    
    init(name: String, dueDate: Date, priority: Prioriry? = nil, isDone: Bool = false) {
        self.name = name
        self.dueDate = dueDate
        self.priority = priority
        self.isDone = isDone
    }
}
