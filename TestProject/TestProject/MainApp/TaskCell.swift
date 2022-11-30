//
//  TaskCell.swift
//  TestProject
//
//  Created by Quentin Cornu on 30/11/2022.
//

import SwiftUI

struct TaskCell: View {
    
    @ObservedObject var taskItem: TaskItem

    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                HStack {
                    Text(taskItem.name)
                    
    //                if let priority = taskItem.priority {
    //                    // priority est NON optionnelle
    //                    switch priority {
    //                    // Différents cas possibles
    //                    }
    //                }
                    
                    if taskItem.priority != nil {
                        switch taskItem.priority! {
                        case .high:
                            Image(systemName: "flag.fill")
                                .foregroundColor(.red)
                        case .medium:
                            Image(systemName: "flag.fill")
                                .foregroundColor(.orange)
                        case .low:
                            Image(systemName: "flag.fill")
                                .foregroundColor(.blue)
                        }
                    }
                }
                Text(taskItem.dueDate.description)
            }
            Spacer()
            Button {
                taskItem.isDone.toggle()
            } label: {
                Image(systemName: taskItem.isDone ? "checkmark.circle" : "circle")
            }
        }
        .padding()
    }
}

struct TaskCell_Previews: PreviewProvider {
    
    static let testTaskItem1 = TaskItem(name: "Preview task", dueDate: Date.now)
    static let testTaskItem2 = TaskItem(name: "Preview task", dueDate: Date.now, priority: .low)
    static let testTaskItem3 = TaskItem(name: "Preview task", dueDate: Date.now, priority: .medium)
    static let testTaskItem4 = TaskItem(name: "Preview task", dueDate: Date.now, priority: .high)
    static let testTaskItem5 = TaskItem(name: "Preview task", dueDate: Date.now, isDone: true)
    
    static var previews: some View {
        VStack(spacing: 0) {
            TaskCell(taskItem: testTaskItem1)
            Divider()
            TaskCell(taskItem: testTaskItem2)
            Divider()
            TaskCell(taskItem: testTaskItem3)
            Divider()
            TaskCell(taskItem: testTaskItem4)
            Divider()
            TaskCell(taskItem: testTaskItem5)
        }
        
    }
}
