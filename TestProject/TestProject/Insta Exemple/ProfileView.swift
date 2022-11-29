//
//  ProfileView.swift
//  TestProject
//
//  Created by Quentin Cornu on 28/11/2022.
//

import SwiftUI

struct ProfileView: View {
    
    let profile: Profile
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            ProfileHeader(
                name: profile.userName,
                isCertified: profile.isCertified
            )
            ProfileStats()
            VStack(alignment: .leading) {
                Text(profile.userName)
                    .bold()
                Text("Description sur plusieurs lignes")
                Text("https://www.hackingwithswift.com/quick-start/swiftui/how-to-position-views-in-a-grid-using-lazyvgrid-and-lazyhgrid")
                    .lineLimit(1)
                
            }
        }
        .padding()
    }
}

struct ProfileView_Previews: PreviewProvider {
    
    static let testProfile1 = Profile(
        userName: "Non certified user",
        isCertified: false,
        numberOfPosts: 234
    )
    
    static let testProfile2 = Profile(
        userName: "certified user",
        isCertified: true,
        numberOfPosts: 234
    )
    
    static var previews: some View {
        ProfileView(profile: testProfile1)
            .previewLayout(.sizeThatFits)
        ProfileView(profile: testProfile2)
            .previewLayout(.sizeThatFits)
    }
}
