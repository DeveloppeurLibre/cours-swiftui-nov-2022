//
//  ListExemple.swift
//  TestProject
//
//  Created by Quentin Cornu on 29/11/2022.
//

import SwiftUI

// 1 - Créer un modèle
// 2 - Ajouter le protocole Identifiable à ce modèle
// 3 - Créer la prop "id" dans le modèle
// 4 - Utiliser une collection de ce modèle dans ForEach

struct Car: Identifiable {
    var id: String
    let model = "Clio 3"
    let color: Color = .gray
}

struct ListExemple: View {
    
    let garage = [Car(id: "001"), Car(id: "002"), Car(id: "003")]
    
    var body: some View {
        List {
            ForEach(garage) { car in
                HStack {
                    Circle()
                        .frame(width: 30, height: 30)
                        .foregroundColor(car.color)
                    Text(car.model)
                }
            }
        }
    }
}

struct ListExemple_Previews: PreviewProvider {
    static var previews: some View {
        ListExemple()
    }
}
