//
//  ContentView.swift
//  TestProject
//
//  Created by Quentin Cornu on 28/11/2022.
//

import SwiftUI

struct ContentView: View {
    
    let fakeProfile = Profile(
        userName: "Fake profile",
        isCertified: false,
        numberOfPosts: 234
    )
    
    var body: some View {
        ProfileView(profile: fakeProfile)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewLayout(.sizeThatFits)
    }
}
