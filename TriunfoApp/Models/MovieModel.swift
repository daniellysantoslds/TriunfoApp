//
//  MovieModel.swift
//  TriunfoApp
//
//  Created by Danielly Santos Lopes da Silva on 12/07/22.
//

import Foundation



struct Movie: Codable {
    let title: String
    let posterPath: String
    let backdropPath: String
    let voteAverage: Float
    let releaseDate: String
    let overview: String
    let genres: [String]?
    
    //adicionar demais itens do site e seus respectivos tipos de dados
    
}
