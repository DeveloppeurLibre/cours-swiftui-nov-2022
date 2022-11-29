//
//  LikeButton.swift
//  TestProject
//
//  Created by Quentin Cornu on 28/11/2022.
//

import SwiftUI

struct LikeButton: View {
    
    @State var isLiked: Bool = false
    
    var body: some View {
        Button {
            isLiked.toggle()
        } label: {
            Image(systemName: isLiked ? "heart.fill" : "heart")
                .font(.system(size: 60))
                .foregroundColor(isLiked ? .red : .gray)
        }
    }
}

struct LikeButton_Previews: PreviewProvider {
    static var previews: some View {
        LikeButton()
    }
}
