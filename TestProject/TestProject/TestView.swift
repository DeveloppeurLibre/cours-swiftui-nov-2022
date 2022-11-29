//
//  TestView.swift
//  TestProject
//
//  Created by Quentin Cornu on 28/11/2022.
//

import SwiftUI

struct TestView: View {
    
    // Création (+ initialisation) d'une variable d'état
    @State var message = "Hello"
    
    var body: some View {
        VStack(spacing: 24) {
            Text(message) // Utilisation d'une v.e
            Button {
                // Modificationd 'une v.e
                message = "Goodbye"
            } label: {
                Text("Say gdbye")
            }
            Button {
                message = "Hello"
            } label: {
                Text("Say hello")
            }
        }

    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
