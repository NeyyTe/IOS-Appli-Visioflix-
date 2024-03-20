//
//  MapsViews.swift
//  Visioflix
//
//  Created by apprenant52 on 12/03/2024.
//

import SwiftUI
import MapKit



struct MapsViews: View {
//    @State var region = MapCameraPosition.region(
//        MKCoordinateRegion(
//        center: CLLocationCoordinate2D(latitude: 50.633333, longitude: 3.066667),
//        span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
//    )
//    )
    
    
//    Position de la caméra sur la carte
    @State var region : MapCameraPosition = .automatic
//    Contrôle l'affichage de la modal
    @State var showModal : Bool = false
//    Cinema actuellement sélectionné par l'utilisateur
    @State var selectedCinema: Cinema?
//    Le texte entré par l'utilisateur lors de la recherche
    @State var searchText : String = ""

    var body: some View {
        NavigationStack{
// Affiche la carte
            Map(position : $region){
// Pour chaque cinéma affiché lors de la recherche
                ForEach(cinemas.filter {
                    searchText.isEmpty || $0.name.localizedStandardContains(searchText)
                  }){ cinema in
// Crée une annotation sur la carte pour les cinémas
                    Annotation(cinema.name, coordinate: cinema.coordinate){
//Le bouton qui, lorsqu'il est cliqué, sélectionne le cinéma et affiche la modal
                        Button(action: {
                            self.selectedCinema = cinema
                            self.showModal = true
                        }, label: {
                            Image(systemName: "mappin.circle.fill")
                                .foregroundStyle(.red)
                                .font(.largeTitle)
                        })
                    }
//Affiche une annotation pour l'utilisateur
                      UserAnnotation(){
                          Image(systemName: "mappin")
                      }
                }
            }
//Ajoute un champ de recherche en haut de la carte
            .overlay(alignment: .top){
                    TextField("Cherchez votre cinéma", text:$searchText)
                    .cornerRadius(20)
                    .font(.subheadline)
                    .padding()
                    .background(.white)
                    .padding()
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
               
            }
            
            }
//Affiche une modal avec les détails du cinéma sélectionné lorsque showModal est vrai
        .sheet(isPresented: $showModal) {
            if let sSelectedCinema = selectedCinema {

                CinemaDetailView(cinema: sSelectedCinema)
                
            }
        }
    }
}


#Preview {
    MapsViews()
}
