//
//  HierarchicalNavigation.swift
//  TestProject
//
//  Created by Quentin Cornu on 29/11/2022.
//

import SwiftUI

struct HierarchicalNavigation: View {
    
    let items = ["Hello", "Message 2", "Message 3"]
    
    var body: some View {
        // 1 - Créer une NavigationView
        NavigationView {
            List {
                ForEach(items, id: \.self) { item in
                    // 2 - Création d'un NavigationLink
                    NavigationLink {
                        // Vue de destination (qui doit être une vue définie dans un autre fichier)
                        Text("Item : \(item)")
                            .navigationTitle(item)
                    } label: {
                        Text(item)
                    }
                }
            }
            .navigationTitle("My items")
        }
    }
}

struct HierarchicalNavigation_Previews: PreviewProvider {
    static var previews: some View {
        HierarchicalNavigation()
    }
}
