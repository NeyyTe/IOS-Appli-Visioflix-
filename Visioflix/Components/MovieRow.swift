//
//  MovieRow.swift
//  Visioflix
//
//  Created by apprenant52 on 20/03/2024.
//

import SwiftUI

struct MovieRow: View {
    @ObservedObject var movie: ListMovies
    @State var showAddedMessage = false
    var body: some View {
        HStack {
             Image(movie.image)
                 .resizable()
                 .scaledToFit()
                 .frame(width:120)
                 .padding(.trailing)
 
             Text(movie.title)
                 .font(.system(size:20))
 
             Spacer()
 
             // Toggle coeur pour favoris
             Button(action: {
                 movie.isFavorite.toggle()
 
                 // Afficher l'overlay uniquement si le cœur est vide
                 if movie.isFavorite {
                     showAddedMessage = true
 
                     // Masquer l'overlay après 2 secondes
                     DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                         withAnimation {
                             showAddedMessage = false
                          }
                      }
                  }
              }) {
                  Image(systemName: movie.isFavorite ? "heart.fill" : "heart")
                      .resizable()
                      .scaledToFit()
                      .frame(width: 30)
                      .foregroundColor(.yellow)
              }
          }
          .padding(.horizontal)
          .foregroundColor(.white)
          .overlay(
              // Overlay pour afficher "Ajouté aux favoris"
              Group {
                  if showAddedMessage {
                      Text("Ajouté aux favoris")
                          .foregroundColor(.white)
                          .padding()
                          .background(.black)
                          .cornerRadius(8)
                          .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: -80))
                  }
              }
          )
      }
  }


#Preview {
    MovieRow(movie: listMovies[1])
}
