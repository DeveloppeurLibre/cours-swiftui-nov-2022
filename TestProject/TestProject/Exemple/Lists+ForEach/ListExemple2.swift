//
//  ListExemple2.swift
//  TestProject
//
//  Created by Quentin Cornu on 29/11/2022.
//

import SwiftUI

struct ListExemple2: View {
    
    // [Car]() -> Création d'un tableau vide de type Car
    @State private var garage = [Car]()
    
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
            
            Button {
                // Ajouter une nouvelle voiture
                garage.append(Car(id: "004"))
            } label: {
                Text("Ajouter une voiture")
            }
        }
        .onAppear {
            loadGarageFromServer()
        }
    }
    
    func loadGarageFromServer() {
        sleep(3)
        garage = [
            Car(id: "001"),
            Car(id: "002"),
            Car(id: "003")
        ]
    }
}

struct ListExemple2_Previews: PreviewProvider {
    static var previews: some View {
        ListExemple2()
    }
}
