//
//  CustomeCapsule.swift
//  NicCageMovieManager
//
//  Created by Richard Dillard on 10/24/25.
//

import SwiftUI


struct CustomeCapsule: View{
    
    let text: String
    var color: Color = .accentColor
    
    var body: some View{
        Text(text)
            .font(.caption)
            .fontWeight(.bold)
            .padding(8)
            .background(color)
            .clipShape(Capsule())
    }
}
