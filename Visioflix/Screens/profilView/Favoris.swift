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
////Picker avec label "Type" .La sélection est liée à la variable "selectedType"
//                     Picker("Type", selection: $selectedType) {
////Chaque option du Picker est un Text avec une étiquette associée
//                         Text("Tous").tag("Tous")
//                         Text("Films").tag("Film")
//                         Text("Séries").tag("Série")
//                     }
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
                         ForEach(listMovies.filter {
                             selectedType == "Tous" || $0.type == selectedType
                         }.filter {
                             searchText.isEmpty || $0.title.localizedCaseInsensitiveContains(searchText)
                         }) { movie in
                             HStack{
                                 Image(movie.image)
                                     .resizable()
                                     .scaledToFit()
                                     .frame(width:120)
                                     .padding(.horizontal)
                                 
                                 Text(movie.title)
                                     .font(.system(size:20))
                                 Spacer()
                             }
                             .foregroundColor(.white)
                         }
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
#Preview {
    Favoris()
}

