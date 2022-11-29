//
//  List.swift
//  TestProject
//
//  Created by Quentin Cornu on 29/11/2022.
//

import SwiftUI

struct ListView: View {
    
    @State private var listItems = [Item]()
    
    var body: some View {
        List {
            ForEach(listItems) { item in
                Cell(item: item)
            }
            Button {
                listItems.append(Item(name: "New Item"))
            } label: {
                Text("Press")
            }

        }
    }
}

struct List_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
