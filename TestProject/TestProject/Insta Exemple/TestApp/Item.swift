//
//  Item.swift
//  TestProject
//
//  Created by Quentin Cornu on 29/11/2022.
//

import Foundation

class Item: ObservableObject, Identifiable {
    let id: UUID
    let name: String
    @Published var isDone: Bool
    
    init(name: String) {
        self.id = UUID()
        self.name = name
        self.isDone = false
    }
}
