//
//  ProfileHeader.swift
//  TestProject
//
//  Created by Quentin Cornu on 28/11/2022.
//

import SwiftUI

struct ProfileHeader: View {
    
    let name: String
    var isCertified: Bool
    
    var body: some View {
        HStack(spacing: 4) {
            Image(systemName: "chevron.left")
            Spacer()
                Text(name)
                    .bold()
            
            if isCertified {
                Image(systemName: "checkmark.seal.fill")
                    .foregroundColor(.blue)
            }
            Spacer()
            Image(systemName: "ellipsis")
            Button {
                print("Button tapped")
            } label: {
                Text("Tap me")
            }

        }
    }
}

struct ProfileHeader_Previews: PreviewProvider {
    static var previews: some View {
        VStack(spacing: 32) {
            ProfileHeader(name: "Test user 1", isCertified: false)
            ProfileHeader(name: "Test user 2", isCertified: true)
        }
        .padding()
        .previewLayout(.sizeThatFits)
    }
}
