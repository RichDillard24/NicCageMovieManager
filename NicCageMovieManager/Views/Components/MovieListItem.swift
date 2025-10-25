//
//  MovieListItem.swift
//  NicCageMovieManager
//
//  Created by Richard Dillard on 10/24/25.
//

import SwiftUI

struct MovieListItem: View{
    let movieInList: Movie
    
    var body: some View{
        HStack{
            Image(movieInList.image ?? "VHS")
                .resizable()
                .frame(width: 50, height: 70)
            VStack(alignment: .leading){
                Text(movieInList.title)
                Text(movieInList.director ?? "Annonymous")
                    .font(.system(size: 12))
                    .foregroundColor(.secondary)
            }
        }
    }
}

