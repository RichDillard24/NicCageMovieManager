//
//  WatchStatus.swift
//  NicCageMovieManager
//
//  Created by Richard Dillard on 10/24/25.
//

enum WatchStatus: String, CaseIterable{
    case planeToWatch = "Want to watch"
    case watching = "Wacthing"
    case dropped = "Dropped"
    case watched = "Watched already"
    case unknown = "Unknown"
}
