//
//  List_Movies.swift
//  Group_Project_Appli
//
//  Created by apprenant73 on 11/03/2024.
//

import SwiftUI





struct Movies: View {
    
    @State var selectedType :String = "Tous"
    
    
    var body: some View {
        
        
        NavigationView{
            ZStack{
                colorBackground
                    .edgesIgnoringSafeArea(.top)
                
                ScrollView{
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
                            ForEach(listMovies.filter({ selectedType == "Tous" || $0.type == selectedType })){ movie in
                                NavigationLink(destination: ListMoviesDetails(movie: movie), label:{
                                    
                                    HStack{
                                        Image(movie.image)
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                                        
                                        VStack ( alignment:.leading){
                                            Text(movie.title)
                                                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                                .bold()
                                               
                                            Text("Genre : " + movie.genre.joined(separator: ", "))
                                            Text("Durée : \(movie.duration)")
                                            Text("Type : \(movie.type)")
                                            Text(movie.rating)
                                        }
                                        
                                    }
                                    
                                })
                            }
                            .padding(.horizontal)
                            .navigationBarTitle("Watchlist")
                            .foregroundColor(.white)
                        }
                    }
                }
            }
        }
    }
    
}

#Preview {
    Movies()
}

