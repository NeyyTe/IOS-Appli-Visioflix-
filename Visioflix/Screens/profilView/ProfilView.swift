//
//  ContentView.swift
//  ProjetPierre
//
//  Created by apprenant63 on 12/03/2024.
//
import SwiftUI

struct ProfilView: View {
    var body: some View {
        
        NavigationStack {
            ZStack{
                colorBackground
                    .edgesIgnoringSafeArea(.top)
                
//          ---------------------------------------------------------
                
                VStack(spacing: 0){
                    VStack{
                        HStack{
                            Image(systemName: "person.circle.fill")
                                .font(.system(size: 60))
                            Spacer()
                            VStack{
                                Text("Clark Kent")
                                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                Text("kentclark@dccomics.com")
                                    .font(.system(size: 18))
                                    .accentColor(.yellow)
                            }
                            Spacer()
                        }
                    
                            .font(.system(size: 25))
                    }
                    .padding()
                    .foregroundColor(.white)
                    
                    //          ---------------------------------------------------------
                    NavigationLink(destination: Preferences(), label: {
                        HStack{
                            Image(systemName: "slider.vertical.3")
                                .font(.system(size: 27))
                                .foregroundColor(.yellow)
                                .padding(.trailing, 10)
                            Text("Mes préférences")
                                .font(.system(size: 27))
                            Spacer()
                            
                            Image(systemName: "arrow.right.circle.fill")
                        }
                    })
                    .padding(37)
                    .foregroundColor(.white)
                    //          ---------------------------------------------------------
                    NavigationLink(destination: Favoris(), label: {
                        HStack{
                            Image(systemName: "star.circle.fill")
                                .font(.system(size: 27))
                                .foregroundColor(.yellow)
                                .padding(.trailing, 10)
                            Text("Mes Favoris")
                                .font(.system(size: 27))
                            Spacer()
                            
                            Image(systemName: "arrow.right.circle.fill")
                        }
                    })
                    .padding(37)
                    .foregroundColor(.white)
                    
                    //          ---------------------------------------------------------
                    
                    NavigationLink(destination: Friends(), label: {
                        HStack{
                            Image(systemName: "person.crop.square.fill")
                                .font(.system(size: 27))
                                .foregroundColor(.yellow)
                                .padding(.trailing, 10)
                            Text("Mes Amis")
                                .font(.system(size: 27))
                            Spacer()
                            
                            Image(systemName: "arrow.right.circle.fill")
                        }
                    })
                    .padding(37)
                    .foregroundColor(.white)
                    
                    //          ---------------------------------------------------------
                    
                    NavigationLink(destination: FAQ(), label: {
                        HStack{
                            Image(systemName: "questionmark.bubble.fill")
                                .font(.system(size: 27))
                                .foregroundColor(.yellow)
                                .padding(.trailing, 10)
                            Text("FAQ")
                                .font(.system(size: 27))
                            
                            Spacer()
                            Image(systemName: "arrow.right.circle.fill")
                        }
                    })
                    .padding(37)
                    .foregroundColor(.white)
                    
                    //          ---------------------------------------------------------
                    
                    NavigationLink(destination: Settings(), label: {
                        HStack{
                            Image(systemName: "gearshape.fill")
                                .font(.system(size: 27))
                                .foregroundColor(.yellow)
                                .padding(.trailing, 10)
                            Text("Paramètres")
                                .font(.system(size: 27))
                            Spacer()
                            
                            Image(systemName: "arrow.right.circle.fill")
                        }
                    })
                    .padding(37)
                    .foregroundColor(.white)
                    //          ---------------------------------------------------------

                    Spacer()
                    VStack{
                        HStack{
                            Text("Conditions général /")
                            Text("Mentions légales")
                        }
                        VStack{
                            Text("© Copyright \(Calendar.current.component(.year, from: Date()))")
                            Text("www.le7element.com")
                                .font(.system(size: 13))
                                .accentColor(.yellow)
                        }
                    }
                    .padding(.horizontal)
                    .foregroundColor(.white)
                }
                    .navigationBarHidden(true)
            }
    
        }
    }
}

#Preview {
    ProfilView()
}
