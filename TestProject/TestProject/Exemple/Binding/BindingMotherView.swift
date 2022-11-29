//
//  BindingMotherView.swift
//  TestProject
//
//  Created by Quentin Cornu on 29/11/2022.
//

import SwiftUI

struct BindingMotherView: View {
    
    // ⚠️ TOUTES les sources de vérité en PRIVATE
    @State private var message = "Message exemple"
    
    var body: some View {
        VStack(spacing: 32) {
            Text(message)
            BindingChildView(messageFromParent: $message)
            // Le signe $ permet de passer une référence à la source de vérité, et NON une recopie
        }
        .padding()
        .background(Color.yellow.opacity(0.8))
    }
}

struct BindingMotherView_Previews: PreviewProvider {
    static var previews: some View {
        BindingMotherView()
    }
}
