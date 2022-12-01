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
        let url = URL(string: "https://api.themoviedb.org/3/movie/popular?api_key=\(API_KEY)")!
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            
            if let error = error {
                print(error.localizedDescription)
            }
            
            // data contient les données récupérées de l'API
            if let data = data {
                do {
                    // json contient les données transformées en type Any
                    let json = try JSONSerialization.jsonObject(with: data)
                    
                    // On doit alors convertir le type Any en type JSON, c'est-à-dire : soit un type tableau, soit un type dictionnaire.
                    let jsonDictionary = json as! [String: Any]
                    
                    // Une fois le dictionnaire transformé, on peut récupérer une valeur de ce dictionnaire via une clé (dans notre exemple, la clé "page")
                    // Ensuite, on doit convertir cette clé en fonction de l'API
                    let page = jsonDictionary["page"] as! Int
                    
                    content = "n° page : \(page)"
                } catch {
                    print("Error de serialisation")
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
