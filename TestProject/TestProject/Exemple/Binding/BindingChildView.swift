//
//  BindingChildView.swift
//  TestProject
//
//  Created by Quentin Cornu on 29/11/2022.
//

import SwiftUI

struct BindingChildView: View {
    
    @Binding var messageFromParent: String
    
    var body: some View {
        VStack(spacing: 16) {
            Text(messageFromParent)
            Button {
                messageFromParent = "Hello"
            } label: {
                Text("Say hello")
            }

            Button {
                messageFromParent = "Goodbye"
            } label: {
                Text("Say goodbye")
            }
        }
        .foregroundColor(.white)
        .padding()
        .background(Color.red.opacity(0.8))
    }
}

struct BindingChildView_Previews: PreviewProvider {
    
    // .constant(uneValeur) -> Fausse source de vérité
    
    static var previews: some View {
        BindingChildView(messageFromParent: .constant("Test message"))
    }
}
