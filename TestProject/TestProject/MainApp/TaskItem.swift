//
//  TaskItem.swift
//  TestProject
//
//  Created by Quentin Cornu on 30/11/2022.
//

import Foundation

// 1 - Ajouter le protocole ObservableObject
// 2 (optionnel) - Transformer (si c'est pas déjà fait) l'objet en classe + ajouter un constructeur
// 3 - Publie les prioriété qui peuvent changer (avec @Published)

class TaskContainer: ObservableObject {
    @Published var tasks: [TaskItem]
    
    init() {
        self.tasks = []
    }
}

class TaskItem: Identifiable, ObservableObject {
    let id: UUID = UUID()
    let name: String
    let dueDate: Date
    let priority: Priority?
    @Published var isDone: Bool
    
    enum Priority {
        case high
        case medium
        case low
    }
    
    init(name: String, dueDate: Date, priority: Priority? = nil, isDone: Bool = false) {
        self.name = name
        self.dueDate = dueDate
        self.priority = priority
        self.isDone = isDone
    }
}
