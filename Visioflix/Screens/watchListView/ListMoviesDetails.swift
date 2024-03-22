//
//  ListMoviesDetails.swift
//  Group_Project_Appli
//
//  Created by apprenant73 on 11/03/2024.
//

import SwiftUI
import AVKit
import YouTubePlayerKit
import UIKit


struct ListMoviesDetails: View {
//    let movie : ListMovies
    @ObservedObject var movie: ListMovies
    @Environment(\.dismiss) var dismiss
    @State private var showAddedMessage = false
    
    
    var body: some View {
        ZStack{
            colorBackground
                .edgesIgnoringSafeArea(.top)

 //          ---------------------------------------------------------
            
            ScrollView{
                VStack{
                    HStack{
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
                                 .overlay(
                                     // Overlay pour afficher "Ajouté aux favoris"
                                     Group {
                                         if showAddedMessage {
                                             Text("Ajouté aux favoris")
                                                 .foregroundColor(.white)
                                                 .padding()
                                                 .background(.black)
                                                 .cornerRadius(8)
                                                 .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: -500))
                                            
                                         }
                                     }
                                 )
                         }
                         .padding(.trailing,30)
                    }
                        Image(movie.image)
                            .resizable()
                            .scaledToFit()
                            .frame(width : 250)
                            .cornerRadius(20)
                        .shadow(color: Color.black.opacity(0.7), radius: 7, x: 0, y: 0)
                    

                    
                    Text(movie.title)
                        .font(
                            .custom(
                                "Copperplate",
                                fixedSize: 36))
                        .bold()
                        .font(.largeTitle)
                        .padding(.bottom)
                        .foregroundStyle(.yellow)
                        .padding(.horizontal,10)

                }
                
//          ---------------------------------------------------------
                
                VStack(alignment: .leading){
                    
                    Text("Type : \(movie.type)")
                    Text("Genre : " + movie.genre.joined(separator: ", "))
                    Text("Durée : \(movie.duration)")
                    Text("Sortie : \(movie.year)")
                    
                    Text("Réalisateur :  \(movie.realisateur)")
                    Text("Plateforme : " + movie.plateform.joined(separator: ", "))
                    
                    Text("Note : \(movie.rating)")
                    Text("Synopsis : ")
                        .font(
                            .custom(
                                "Copperplate",
                                fixedSize: 22))
                        .foregroundStyle(.yellow)
                        .padding(.top,10)
                        .padding(.bottom,5)
                        .bold()
                        
                    Text(movie.synopsis)
                        .foregroundStyle(Color(red: 235/255,
                                               green: 235/255,
                                               blue: 235/255)
                        )
                    
 //          ---------------------------------------------------------
                    
                    VStack (alignment: .leading){
                        
                        Text("Distribution :")
                            .font(
                                .custom(
                                    "Copperplate",
                                    fixedSize: 22))
                            .bold()
                            .foregroundStyle(.yellow)
                            .padding(.vertical, 10)
                        ForEach(movie.actors, id: \.self) { actor in
                            HStack {
                                Image(systemName: "circlebadge.fill")
                                    .foregroundColor(.white)
                                Text(actor)
                                    .foregroundStyle(Color(red: 235/255, green: 235/255, blue: 235/255))
                                
                                
                            }
                            .padding(.leading)
                        }
                        
//          ---------------------------------------------------------
                        
                        VStack(alignment: .leading){
                            Text("Bande annonce : ")
                                .font(
                                    .custom(
                                        "Copperplate",
                                        fixedSize: 22))
                                .bold()
                                .padding(.vertical,10)
                                .foregroundStyle(.yellow)
                            
                            YoutubePlayer(url:movie.url)
                                .frame(maxWidth: .infinity, alignment: .center)
                            
                        }
                    }
                }
                .padding(.horizontal)
                
            }
            .navigationBarBackButtonHidden(true)
                   .navigationBarItems(leading:
                                           Button(action: {
                       dismiss()
                   }) {
                       Image(systemName: "chevron.left")
                           .foregroundColor(.white)
                       Text("Match")
                           .foregroundStyle(.white)
                   })
        }
        .frame(width: UIScreen.main.bounds.width)
        .foregroundColor(.white)
    }
}


#Preview {
    ListMoviesDetails(movie: listMovies[1])
}
