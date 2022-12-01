//
//  RestMovie.swift
//  TestProject
//
//  Created by Quentin Cornu on 01/12/2022.
//

import Foundation

struct RestPopularMovies: Codable {
    let page: Int
    let results: [RestMovie]
}

struct RestMovie: Codable {
    let title: String
    let imagePath: String
    let voteAverage: Float
    
    enum CodingKeys: String, CodingKey {
        case title
        case imagePath = "poster_path"
        case voteAverage = "vote_average"
    }
}
