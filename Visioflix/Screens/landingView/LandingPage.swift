//
//  LandingPage.swift
//  Visioflix
//
//  Created by apprenant52 on 12/03/2024.
//

import SwiftUI


struct LandingPage: View {
    @State  var animationAmount = 1.0

//variable d'état pour suivre l'index de l'image actuellement affichée
    @State var currentIndex = 0
    
    let listMoviesImages = listMovies.map { $0.image }
    
    var body: some View {
        NavigationView {

                ZStack {
                    colorBackground
                        .edgesIgnoringSafeArea(.top)
                    
                    VStack{
                        Text("VisioFlix")
                            .font(
                                .custom(
                                    "Copperplate-Bold",
                                    fixedSize: 42))
                            .foregroundStyle(LinearGradient(gradient: Gradient(colors: [.pink, .yellow]), startPoint: .leading, endPoint: .trailing))
                            .padding(.bottom,30)
                        Text("Trouver le film qui ")
                        
                        +
                        Text("vous")
                            .fontWeight(.bold)
                        +
                        Text(" correspond")
                            .bold()
                        NavigationLink(destination: FilmsRandom(), label: {
                            HStack {
                                Text("Match")
                                    .bold()
                                Image(systemName: "hand.thumbsup.fill")
                                
                            }
                            .padding(70)
                            .background(.yellow)
                            .foregroundStyle(.black)
                            .clipShape(.circle)
                            .shadow(color: Color.black.opacity(0.8), radius: 7, x: 0, y: 2)
                            .padding(.top,30)
                            
                        })

               
                            
                        VStack {
                            
                            HStack {
                                Text("Les suggestions")
                                    .font(.title2)
                                    .padding(.top)
                                    .padding(.leading)
                                Spacer()
                            }
                        
                        }
                            CarouselView()
                            .padding(.bottom, 60)
                        }
                }
                .foregroundColor(.white)
                .font(.system(size: 22))
                .navigationBarTitle("Match")
                .navigationBarHidden(true)
            }
        
        }
        
    
    
}

#Preview {
    LandingPage()
}
