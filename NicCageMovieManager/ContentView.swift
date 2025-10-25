//
//  ContentView.swift
//  NicCageMovieManager
//
//  Created by Richard Dillard on 10/24/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    @State var movies: [Movie] = getMovies()
    @State var showAddSheet = false
    @State var newMovie: Movie = Movie(title:"", director: "")
    
    var body: some View {
        NavigationStack{
            List($movies, id: \.self.id) { $movie in
                
                NavigationLink(destination: DetailView(movie: $movie )){
                    MovieListItem(movieInList: movie)
                }
                
            }.navigationBarTitle("Nic Cage Movies")
                .navigationBarItems(trailing: Button("Add", action: {
                    showAddSheet.toggle()
                }))
                .sheet(isPresented: $showAddSheet){
                    if !newMovie.title.isEmpty {
                        movies.append(newMovie)
                    }
                    newMovie = Movie(title: "", director: "")
                }content:{
                    AddEditMovieView(movie: $newMovie)
                }
                
        }
    }
}
#Preview {
    ContentView()
       
}
