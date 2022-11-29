//
//  NavigationModale.swift
//  TestProject
//
//  Created by Quentin Cornu on 29/11/2022.
//

import SwiftUI

struct NavigationModale: View {
    
    @State private var isShowingModal = false
        
    var body: some View {
        Button {
            isShowingModal = true
        } label: {
            Text("Show modal")
        }
        .sheet(isPresented: $isShowingModal) {
            Text("Nouvel écran")
            // Ici on place la vue de destination (probablement définir dans un autre fichier
        }
    }
}

struct NavigationModale_Previews: PreviewProvider {
    static var previews: some View {
        NavigationModale()
    }
}
