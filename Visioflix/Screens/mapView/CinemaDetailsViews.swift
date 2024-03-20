//
//  CineamDetails.swift
//  Visioflix
//
//  Created by apprenant52 on 12/03/2024.
//

import SwiftUI

struct CinemaDetailView: View {
    var cinema : Cinema
    var body: some View {
        ZStack{
            
            colorBackground
                .ignoresSafeArea()
            
            VStack(alignment: .leading){
                HStack{
                    Image(systemName: "circlebadge.fill")
                        .foregroundColor(.yellow)

                    Text(cinema.name)
                        .font(
                            .custom(
                                "Helvetica",
                                fixedSize: 22))
                        .bold()
                        .padding(.vertical)
                }
        
                VStack(alignment: .leading, spacing: 10){
                    VStack(alignment : .leading){
                        Text("Adresse : ")
                            .bold()
                        Text(cinema.address)
                    
                    }
                    
                    VStack(alignment: .leading){
                        Text("Téléphone : ")
                            .bold()
                            
                        Text(cinema.numberPhone)
                        
                    }
                       
                    Link("Site Web", destination: URL(string: cinema.website)!)
                        .foregroundStyle(.yellow)
                        .padding(.bottom)
                        .bold()
                    
                }

                Image(cinema.photo)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(5)
                    .shadow(color: Color.black.opacity(0.5), radius: 3, x: 0, y: 0)
            }
            .foregroundColor(.white)
            .frame(width: 300 , height: 400)
            .presentationDetents([.medium , .large])
        }
    }
}
#Preview {
    CinemaDetailView(cinema: cinemas[2])
}



