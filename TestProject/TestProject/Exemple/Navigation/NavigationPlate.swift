//
//  NavigationPlate.swift
//  TestProject
//
//  Created by Quentin Cornu on 29/11/2022.
//

import SwiftUI

struct NavigationPlate: View {
    var body: some View {
        TabView {
            Rectangle()
                .foregroundColor(.yellow)
                .tabItem {
                    Label("Hello", systemImage: "house")
                }
            Rectangle()
                .foregroundColor(.green)
                .tabItem {
                    Label("Hello", systemImage: "pencil")
                }
            Rectangle()
                .foregroundColor(.red)
                .tabItem {
                    Label("Hello", systemImage: "star")
                }
        }
    }
}

struct NavigationPlate_Previews: PreviewProvider {
    static var previews: some View {
        NavigationPlate()
    }
}
