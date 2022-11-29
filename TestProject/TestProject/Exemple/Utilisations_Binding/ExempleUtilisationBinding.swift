//
//  ExempleUtilisationBinding.swift
//  TestProject
//
//  Created by Quentin Cornu on 29/11/2022.
//

import SwiftUI

struct ExempleUtilisationBinding: View {
    
    @State private var sot = ""
    @State private var myColor: Color = .red
    @State private var isShowingColorPicker: Bool = false
    
    var body: some View {
        VStack(spacing: 36) {
            
            // TextField
            Text("Message entré : \(sot) \(sot == "Azerty" ? "✅" : "❌")")
            TextField("Test de texte", text: $sot)
                .textFieldStyle(.roundedBorder)
                
            if sot == "Azerty" {
                Image(systemName: "checkmark")
                    .foregroundColor(.green)
            }
            
            // Color Picker
            if isShowingColorPicker {
                ColorPicker("Exemple", selection: $myColor)
                    .foregroundColor(myColor)
            }
                
            // Toggle
            Toggle(isOn: $isShowingColorPicker) {
                Text("Option :")
            }
        
        }
        .padding()
    }
}

struct ExempleUtilisationBinding_Previews: PreviewProvider {
    static var previews: some View {
        ExempleUtilisationBinding()
    }
}
