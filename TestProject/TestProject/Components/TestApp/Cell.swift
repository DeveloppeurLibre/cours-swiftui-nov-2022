//
//  Cell.swift
//  TestProject
//
//  Created by Quentin Cornu on 29/11/2022.
//

import SwiftUI

struct Cell: View {
    
    @ObservedObject var item: Item
    
    var body: some View {
        HStack {
            Text(item.name)
            Spacer()
            Text(item.isDone ? "Ok" : "")
        }
    }
}

struct Cell_Previews: PreviewProvider {
    static var previews: some View {
        Cell(item: Item(name: "Test"))
    }
}
