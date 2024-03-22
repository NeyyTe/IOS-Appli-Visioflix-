//
//  CarouselView.swift
//  Visioflix
//
//  Created by apprenant73 on 19/03/2024.
//

import SwiftUI

struct CarouselView: View {
//variable d'état pour suivre l'index de l'image actuellement affichée
        @State var currentIndex = 0
    
        let timer = Timer.publish(every: 5, on: .main, in: .common).autoconnect()
        let listMoviesImages = listMovies.map { $0.image }
    
    var body: some View {
        VStack {
//TabView avec l'index sélectionné lié à  la variable currentIndex
            TabView(selection: $currentIndex) {
//on itère sur chaque index d'image
                ForEach(listMoviesImages.indices, id: \.self) { index in
                    VStack {
//affichage de l'image
                        Image(listMoviesImages[index])
                            .resizable()
                            .scaledToFit()
                            .clipped()
                            .frame(width: 200)
                            .cornerRadius(15)
                            .shadow(color: Color.black.opacity(0.8), radius: 4, x: 0, y: 2)
                    }
// Définition de la balise (tag) pour le TabView avec l'index actuel
                    .tag(index)
                }
            }
// Configuration du style du TabView en .page
            .tabViewStyle(.page)
// Configuration du style de l'index en .page avec backgroundDisplayMode défini sur .never
            .indexViewStyle(.page(backgroundDisplayMode: .never))
// Déclenchement automatique d'une action
            .onReceive(timer){_ in
// Animation de la modification de l'index courant
                        withAnimation {
// Calcul du nouvel index pour parcourir les images
                            currentIndex = (currentIndex + 1) % listMoviesImages.count
                        }
            }
            // Exécution du code suivant lorsque currentIndex change
            .onChange(of: currentIndex) { newValue, oldValue in
                // Logique pour gérer le changement d'index
                if currentIndex == listMoviesImages.count {
                    currentIndex = 0
                } else if currentIndex == -1 {
                    currentIndex = listMoviesImages.count - 1
                }
            }
            
        }
    }
}

#Preview {
    CarouselView()
}
