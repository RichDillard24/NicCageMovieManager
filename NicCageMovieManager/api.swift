//
//  api.swift
//  NicCageMovieManager
//
//  Created by Richard Dillard on 10/24/25.
//

func getMovies() -> [Movie] {
    return[
        Movie(
            title:"National Treasure",
            director: "Jon Turteltaub",
            image: "NT",
            description: "Modern treasure hunters search for a chest of riches rumored to have been stashed away by George Washington, Thomas Jefferson and Benjamin Franklin.",
                    ),
        Movie(
            title:"The Unbearable Weight of Massive Talent",
            director: "Tom Gormican",
            image: "nic",
            description: "action-comedy where a fictionalized, cash-strapped Nicolas Cage must embrace his public persona to save himself and his loved ones",
                    ),
        Movie(
            title: "Face off",
            director: "John Woo",
            image:"face",
            description:"It stars John Travolta as an FBI agent and Nicolas Cage as a terrorist, who undergo an experimental surgery to swap their faces and identities"
        )
    ]
}
