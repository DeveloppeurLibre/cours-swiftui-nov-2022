//
//  TaskList.swift
//  TestProject
//
//  Created by Quentin Cornu on 30/11/2022.
//

import SwiftUI

struct TaskList: View {
    
    @StateObject var container = TaskContainer()
    
    var body: some View {
        VStack {
            Text("My Tasks")
                .font(.title)
                .bold()
            List {
                ForEach(container.tasks) { taskItem in
                    TaskCell(taskItem: taskItem)
                }
            }
        }
        .overlay(alignment: .bottomTrailing) {
            Button {
                // Ajout d'une tache pré-remplie
                let newTask = TaskItem(name: "New task", dueDate: Date.now)
                container.tasks.append(newTask)
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
        .onAppear {
            container.tasks = [
                TaskItem(name: "Preview task", dueDate: Date.now, isDone: true),
                TaskItem(name: "Preview task", dueDate: Date.now, priority: .medium)
            ]
        }
    }
}

struct TaskList_Previews: PreviewProvider {
    static var previews: some View {
        TaskList()
    }
}
