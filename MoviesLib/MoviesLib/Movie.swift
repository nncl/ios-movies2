//
//  Movie.swift
//  MoviesLib
//
//  Created by Usuário Convidado on 08/03/17.
//  Copyright © 2017 EricBrito. All rights reserved.

// This class represents a movie
//

import Foundation

class Movie {
    var title: String
    var rating: Double
    var summary: String
    var duration: String
    var imageName: String
    var categories: [String]! // optional, vamos trabalhar com ele já desembrulhado
    
    init(title: String, rating: Double, summary: String, duration: String, imageName: String) {
        self.title = title
        self.rating = rating
        self.summary = summary
        self.duration = duration
        self.imageName = imageName
    }
}
