//
//  SearchExemple.swift
//  TestProject
//
//  Created by Quentin Cornu on 01/12/2022.
//

import SwiftUI

struct SearchExemple: View {
    
    @State private var items = [
        "Pomme", "Poire", "Ananas", "Pêche"
    ]
    
    @State private var searchText = ""
    
    var body: some View {
        NavigationView {
            List {
                ForEach(items, id: \.self) { item in
                    if searchText == "" || item.lowercased().contains(searchText.lowercased()) {
                        Text(item)
                    }
                    
                }
            }
            .navigationTitle("My items")
            .searchable(text: $searchText)
        }
    }
}

struct SearchExemple_Previews: PreviewProvider {
    static var previews: some View {
        SearchExemple()
    }
}
