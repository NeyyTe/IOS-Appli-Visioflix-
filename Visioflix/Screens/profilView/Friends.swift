//
//  Friends.swift
//  Visioflix
//
//  Created by apprenant73 on 15/03/2024.
//

import SwiftUI


struct Friends: View {
    @State private var searchText = ""
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ZStack{
            colorBackground
                .edgesIgnoringSafeArea(.top)
            
            // Liste horizontal d'avatars + prénom
            VStack {
                HStack {
                    TextField("Rechercher...", text: $searchText)
                        .padding(10)
                        .background(Color.white)
                        .cornerRadius(8)
                        .padding()
                    
                }
                HStack{
                    ForEach(friendsHorizontal) { horizontal in
                        VStack{
                            Image(horizontal.imageProfil)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 60)
                            Text(horizontal.names)
                                .foregroundStyle(.white)
                        }
                    }
                }
                
                // Liste vertical d'amis
                ForEach(friends) { friend in
                    HStack{
                        Image(friend.imageProfil)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 75)
                        VStack(alignment: .leading){
                            Text(friend.names)
                            Text(friend.discussion)
                        }
                        Spacer()
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/,
                               label: {
                            Text(friend.date)
                                .padding()
                            
                        })
                    }
                    .foregroundStyle(Color(red: 225/255,
                                           green: 225/255,
                                           blue: 225/255)
                    )
                    
                    .padding(10)
                    
                }
                Spacer()
            }.navigationBarTitle("Amis")
                .navigationBarTitleDisplayMode(.inline)
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
    
}

#Preview {
    Friends()
}
