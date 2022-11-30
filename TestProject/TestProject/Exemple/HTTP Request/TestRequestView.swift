//
//  TestRequestView.swift
//  TestProject
//
//  Created by Quentin Cornu on 30/11/2022.
//

import SwiftUI

struct TestRequestView: View {
    
    @State private var content = "résultat de la requête"
    
    var body: some View {
        VStack(spacing: 16) {
            Text(content)
            Button {
                loadContent()
            } label: {
                Text("Load")
            }
        }
    }
    
    func loadContent() {
        content = "Loading..."
        let url = URL(string: "https://stackoverflow.com")!
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            
            if let error = error {
                print(error.localizedDescription)
            }
            
            if let data = data {
                let stringData = String(data: data, encoding: .utf8)
                content = stringData ?? "no data"
            }
        }
        task.resume()
    }
}

struct TestRequestView_Previews: PreviewProvider {
    static var previews: some View {
        TestRequestView()
    }
}
