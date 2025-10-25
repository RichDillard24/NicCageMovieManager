//
//  AddEditMovieView.swift
//  NicCageMovieManager
//
//  Created by Richard Dillard on 10/24/25.
//

import SwiftUI

struct AddEditMovieView: View {
    @Binding var movie: Movie
    
    var body: some View{
        ZStack{
            LinearGradient(
                gradient: Gradient(
                    colors: [
                        Color
                        .gray.opacity(0.3)
                    ]
                ),
                startPoint: .top,
                endPoint: .bottom
            )
            Form{
                Section(header: Text("Movie Details")){
                    TextField("Title of Movie", text: $movie.title)
                    TextField("Director", text: $movie.director)
                    TextEditor(text: $movie.description)
                        .frame(height: 100)
                    Picker("Genre", selection: $movie.genre){
                        ForEach(MovieGenres.allCases, id: \.self){ genre in
                            Text(genre.rawValue).tag(genre)
                        }
                    }
                }
                Section(header: Text("Review")){
                    Picker("Rating", selection: $movie.rating){
                        Text("Not Rated").tag(0)
                        ForEach(1...5, id: \.self){ i in
                            Text("\(i)").tag(i)
                        }
                    }
                    TextEditor(text: $movie.review)
                        .frame(height:100)
                    Picker("Watch Status", selection: $movie.watchStatus){
                        ForEach(WatchStatus.allCases, id: \.self){ status in
                            Text(status.rawValue).tag(status)
                            
                        }
                    }
                }
            }
        }
    }
}
