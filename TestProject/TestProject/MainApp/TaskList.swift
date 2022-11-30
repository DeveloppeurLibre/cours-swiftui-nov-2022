//
//  TaskList.swift
//  TestProject
//
//  Created by Quentin Cornu on 30/11/2022.
//

import SwiftUI

struct TaskList: View {
    
    @State var tasks = [
        TaskItem(name: "Preview task", dueDate: Date.now, isDone: true),
        TaskItem(name: "Preview task", dueDate: Date.now, priority: .medium)
    ]
    
    var body: some View {
        VStack {
            Text("My Tasks")
                .font(.title)
                .bold()
            List {
                ForEach(tasks) { taskItem in
                    TaskCell(taskItem: taskItem)
                }
            }
        }
        .overlay(alignment: .bottomTrailing) {
            Button {
                // Ajout d'une tache pré-remplie
                let newTask = TaskItem(name: "New task", dueDate: Date.now)
                tasks.append(newTask)
            } label: {
                Image(systemName: "plus")
                    .font(.system(size: 30, weight: .bold))
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .clipShape(Circle())
                    .shadow(radius: 10)
            }
            .padding()
        }
    }
}

struct TaskList_Previews: PreviewProvider {
    static var previews: some View {
        TaskList()
    }
}
