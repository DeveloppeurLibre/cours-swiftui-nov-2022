//
//  LabelStat.swift
//  TestProject
//
//  Created by Quentin Cornu on 28/11/2022.
//

import SwiftUI

struct LabelStat: View {
    
    let stat: Int
    let label: String
    
    var body: some View {
        VStack {
            Text("\(stat)")
                .font(.system(size: 24, weight: .bold))
            Text(label)
        }
    }
}

struct LabelStat_Previews: PreviewProvider {
    static var previews: some View {
        LabelStat(stat: 675, label: "Posts")
    }
}
