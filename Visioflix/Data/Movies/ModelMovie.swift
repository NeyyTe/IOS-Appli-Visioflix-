//
//  ModelMovie.swift
//  Visioflix
//
//  Created by apprenant52 on 14/03/2024.
//

import Foundation
import YouTubePlayerKit



import SwiftUI
// Structure de typage de nos donnés
class ListMovies:Identifiable, ObservableObject {
    
    let id = UUID()
    let title: String
    let duration: String
    let synopsis: String
    let actors: [String]
    let image: String
    let type: String
    let genre : [String]
    let year : Int
    let realisateur : String
    var rating : String
    var comments: Int
    let plateform :[String]
    let url:YouTubePlayer
    @Published var isFavorite: Bool
    
    init(title: String, duration: String, synopsis: String, actors: [String], image: String, type: String, genre: [String], year: Int, realisateur: String, rating: String, comments: Int, plateform: [String], url: YouTubePlayer, isFavorite: Bool = false) {
        self.title = title
        self.duration = duration
        self.synopsis = synopsis
        self.actors = actors
        self.image = image
        self.type = type
        self.genre = genre
        self.year = year
        self.realisateur = realisateur
        self.rating = rating
        self.comments = comments
        self.plateform = plateform
        self.url = url
        self.isFavorite = isFavorite
    }

}
