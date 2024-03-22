//
//  Preferences.swift
//  Visioflix
//
//  Created by apprenant52 on 20/03/2024.
//

import SwiftUI

struct Preferences: View {
    @State var selectedType :String = "Tous"
    @Environment(\.dismiss) var dismiss
    var body: some View {
        NavigationView{
            ZStack{
//Appel de la varible colorBackGround
                colorBackground
                    .edgesIgnoringSafeArea(.top)
                
//Picker avec label "Type" .La sélection est liée à la variable "selectedType"
                VStack {
                    
                    HStack {
                        Text("Mes genres favoris ")
                            .font(.system(size: 20))
                            .foregroundColor(.white)
                            .padding(EdgeInsets(top: 15, leading: 20, bottom: 15, trailing: 20))
                        Spacer()
                        Picker("Genre", selection: $selectedType) {
//Chaque option du Picker est un Text avec une étiquette associée
                            Text("Tous").tag("Tous")
                            Text("Comédie").tag("Comédie")
                            Text("Science-fiction").tag("Science-fiction")
                            Text("Drame").tag("Drame")
                                
                        }
                        .accentColor(.white)
                        .font(.system(size: 25))
                        .foregroundColor(.white)
                        .padding(EdgeInsets(top: 15, leading: 20, bottom: 15, trailing: 20))
                    }
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(10)
                    HStack {
                        Text("Les genres à exclure ")
                            .font(.system(size: 20))
                            .foregroundColor(.white)
                            .padding(EdgeInsets(top: 15, leading: 20, bottom: 15, trailing: 20))
                             Spacer()
                        Picker("Genre", selection: $selectedType) {
//Chaque option du Picker est un Text avec une étiquette associée
                            Text("Tous").tag("Tous")
                            Text("Comédie").tag("Comédie")
                            Text("Science-fiction").tag("Science-fiction")
                            Text("Drame").tag("Drame")
                        }
                        .accentColor(.white)
                        .font(.system(size: 25))
                        .foregroundColor(.white)
                        .padding(EdgeInsets(top: 15, leading: 20, bottom: 15, trailing: 20))
                    }
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(10)
                    HStack {
                        Text("Mes acteurs favoris")
                            .font(.system(size: 20))
                            .foregroundColor(.white)
                            .padding(EdgeInsets(top: 15, leading: 20, bottom: 15, trailing: 20))
                        Spacer()
                        Picker("Acteurs", selection: $selectedType) {
//Chaque option du Picker est un Text avec une étiquette associée
                            Text("Tous").tag("Tous")
                            Text("Al pacino").tag("Al pacino")
                            Text("Ramy Malek").tag("Ramy Malek")
                            Text("Mickael Landon").tag("Mickael Landon")
                        }
                        .accentColor(.white)
                        .font(.system(size: 25))
                        .foregroundColor(.white)
                        .padding(EdgeInsets(top: 15, leading: 20, bottom: 15, trailing: 20))
                        
                    }
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(10)
                    HStack {
                        Text("Mon humeur du jour")
                            .font(.system(size: 20))
                            .foregroundColor(.white)
                            .padding(EdgeInsets(top: 15, leading: 20, bottom: 15, trailing: 20))
                        Spacer()
                        Picker("Humeur", selection: $selectedType) {
//Chaque option du Picker est un Text avec une étiquette associée
                            Text("Tous").tag("Tous")
                            Text("Joyeuse").tag("Joyeuse")
                            Text("Contrariée").tag("Contrariée")
                            Text("Triste").tag("Triste")
                        }
                        .accentColor(.white)
                        .font(.system(size: 25))
                        .foregroundColor(.white)
                        .padding(EdgeInsets(top: 15, leading: 20, bottom: 15, trailing: 20))
                        
                    }
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(10)
                
                    Spacer()
                        
                }
                .padding()
                
            }
            .navigationBarTitle("Mes préférences")
            .navigationBarTitleDisplayMode(.inline)
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
    }
}


#Preview {
    Preferences()
}
