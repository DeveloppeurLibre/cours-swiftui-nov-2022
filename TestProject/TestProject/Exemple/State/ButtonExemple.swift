//
//  ButtonExemple.swift
//  TestProject
//
//  Created by Quentin Cornu on 29/11/2022.
//

import SwiftUI

struct ButtonExemple: View {
    
    // 1 - Création d'une source de vérité
    // Elle a forcément une valeur -> l'état initial de la vue
    @State var message = ""
    
    var body: some View {
        VStack(spacing: 16) {
            Text(message)
            Button {
                message = "New message"
            } label: {
                // Utilisation directe de la variable d'état
                Text("Change message")
                    .foregroundColor(.white)
                    .padding()
                    .background(message == "" ? Color.red : Color.blue)
                    // Utilisation de la v.e pour déterminer une caractéristique
            }
        }
    }
}

struct ButtonExemple_Previews: PreviewProvider {
    static var previews: some View {
        ButtonExemple()
    }
}
