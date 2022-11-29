//
//  ProfileStats.swift
//  TestProject
//
//  Created by Quentin Cornu on 28/11/2022.
//

import SwiftUI

struct ProfileStats: View {
    var body: some View {
        HStack {
            // Image
            Image("landscape")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 80, height: 80)
                .clipShape(Circle())
                .padding(4)
                .overlay {
                    Circle()
                        .stroke(Color.gray, lineWidth: 3)
                }
            Spacer()
            // Stats 1
            LabelStat(stat: 123, label: "Posts")
            Spacer()
            LabelStat(stat: 456, label: "Followers")
            Spacer()
            LabelStat(stat: 678, label: "Followings")
            Spacer()
        }
    }
}

struct ProfileStats_Previews: PreviewProvider {
    static var previews: some View {
        ProfileStats()
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
