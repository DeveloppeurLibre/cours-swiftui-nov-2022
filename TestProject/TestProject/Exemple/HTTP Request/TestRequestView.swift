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
        // ⚠️ Remplacer [YOUR_API_KEY] par votre clé API (que vous pouvez obtenir sur le site https://www.themoviedb.org)
        let API_KEY = "[YOUR_API_KEY]"
        let url = URL(string: "https://api.themoviedb.org/3/movie/popular?api_key=ee6b2b9e0970948e6741d6b7985191fb")!
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            
            if let error = error {
                print(error.localizedDescription)
            }
            
            // data contient les données récupérées de l'API
            if let data = data {
                do {
                    let decoder = JSONDecoder()
                    let popularMovies = try decoder.decode(RestPopularMovies.self, from: data)
                    for popMovie in popularMovies.results {
                        print(popMovie.imagePath)
                    }
                } catch {
                    print(error.localizedDescription)
                }
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
