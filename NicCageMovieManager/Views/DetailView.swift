//
//  DetailView.swift
//  NicCageMovieManager
//
//  Created by Richard Dillard on 10/24/25.
//

import SwiftUI

struct DetailView: View {
    @Binding var movie: Movie
    @State private var showEditSheet: Bool = false
    
    var body: some View {
        ScrollView{
            
            VStack{
                HStack{
                    Image(movie.image ?? "VHS")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 150)
                        .padding(.vertical, 20)
                    VStack{
                        Text("\(movie.title)")
                            .font(.system(size: 36, weight: .bold, design: .serif))
                        Text("Directed by \(movie.director)")
                            .font(.headline)
                            .foregroundColor(.secondary)
                        Text("Genre: \(movie.genre.rawValue)")
                            .font(.caption)
                            .foregroundColor(.secondary)
                    }
                }
                CustomeCapsule(text: movie.watchStatus.rawValue, color: .accentColor.opacity(0.5))
                Text(movie.description != "" ? movie.description: "No description")
                
                if(movie.review != "" || movie.rating > 0){
                    Text("Review")
                        .font(.title3)
                    if(movie.rating > 0){
                        Text("Rating: \(movie.rating) \(movie.rating > 1 ? "Stars" : "Star")")
                    }
                    Text(movie.review != "" ? movie.review: "No review yet")
                }
            }
            .padding(.horizontal)
        }
        .navigationTitle("Details")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarItems(trailing: Button("Edit",action: {
            showEditSheet.toggle()
        }))
        .sheet(isPresented: $showEditSheet, content:{
            AddEditMovieView(movie: $movie)
        })
    }
}
