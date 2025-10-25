//
//  Movie.swift
//  NicCageMovieManager
//
//  Created by Richard Dillard on 10/24/25.
//

import Foundation

struct Movie: Identifiable{
    
    let id = UUID()
    var title: String
    var director: String
    var genre: MovieGenres = .unknown
    var image: String = "VHS"
    var description: String = ""
    var rating: Int = 0
    var review: String = ""
    var watchStatus: WatchStatus = .unknown
    var isFavorites: Bool = false
}
