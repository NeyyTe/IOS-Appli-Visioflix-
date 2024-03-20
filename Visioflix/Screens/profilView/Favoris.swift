//
//  Favoris.swift
//  Visioflix
//
//  Created by apprenant73 on 15/03/2024.
//

import SwiftUI

struct Favoris: View {
    @Environment(\.dismiss) var dismiss
    @State var searchText = ""
    @State var selectedType :String = "Tous"

    var isFavorite: Bool = false
    var body: some View {
        ZStack{
            
            colorBackground
                .edgesIgnoringSafeArea(.top)
            ScrollView{
                
                HStack {
                    TextField("Rechercher...", text: $searchText)
                        .padding(10)
                        .background(Color.white)
                        .cornerRadius(8)
                        .padding()
                    
                }
                
                VStack(alignment: .leading, spacing: 16) {
                    //Picker avec label "Type" .La sélection est liée à la variable "selectedType"
                    Picker("Type", selection: $selectedType) {
                        //Chaque option du Picker est un Text avec une étiquette associée
                        Text("Tous").tag("Tous")
                        Text("Films").tag("Film")
                        Text("Séries").tag("Série")
                    }
                    .pickerStyle(.segmented)
                    .background(Color(red: 235/255, green: 235/255, blue: 235/255))
                    .padding()
                    
                    VStack(alignment: .leading){
                        ForEach(listMovies.filter({ selectedType == "Tous" || $0.type == selectedType })){  movie in
                            
                            MovieRow(movie: movie)
                        }
                    }
                    .navigationBarBackButtonHidden(true)
                    .navigationBarItems(leading:
                                            Button(action: {
                        dismiss()
                    }) {
                        Image(systemName: "chevron.left")
                            .foregroundColor(.white)
                        Text("Profil")
                            .foregroundStyle(.white)
                    })
                    .navigationBarTitle("Favoris")
                    .navigationBarTitleDisplayMode(.inline)
                }
            }
        }
    }
}


#Preview {
    Favoris()
}

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
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: -150))
                }
            }
        )
    }
}

