//
//  filmsRandom.swift
//  Visioflix
//
//  Created by apprenant73 on 14/03/2024.
//

import SwiftUI

struct FilmsRandom: View {
    @State var film = listMovies.randomElement()!
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ZStack{
            
            colorBackground
                .edgesIgnoringSafeArea(.top)
            
            NavigationLink(destination: ListMoviesDetails(movie: film), label: {
                VStack {
                    Text("Voici votre recommandation : ")
                        .foregroundStyle(.white)
                        .font(.system(size:28))
                    
                    Image(film.image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 250)
                        .cornerRadius(20)
                        .shadow(color: Color.black.opacity(0.7), radius: 7, x: 0, y: 0)
                    
                    Text(film.title)
                        .foregroundStyle(.white)
                        .font(.system(size:24))
                        .bold()
                        .padding()
                    
                    VStack{
                        NavigationLink(destination: ListMoviesDetails(movie: film), label: {
                            Text("Détails")
                                .foregroundColor(.black)
                                .font(.system(size: 18))
                                .padding()
                                .background(.yellow)
                                .cornerRadius(10)
                                
                                
                        })
                    }
                    
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
            })
            
            
            
            .onAppear{
                film = listMovies.randomElement()!
            }
            
        }
    }
}
#Preview {
    FilmsRandom()
}
