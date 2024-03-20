//
//  DataMaps.swift
//  Visioflix
//
//  Created by apprenant52 on 13/03/2024.
//

import Foundation
import MapKit


let cinemas = [
    Cinema(
        name: "UGC Ciné Cité",
        coordinate: CLLocationCoordinate2D(latitude: 50.63429, longitude: 3.06297),
        address: "40 Rue de Béthune, 59800 Lille",
        numberPhone: "0 826 88 07 00",
        photo: "cite",
        website : "https://www.ugc.fr/cinema.html?id=25"
        ),
    Cinema(
        name: "Cinéma Le Majestic Lille",
        coordinate: CLLocationCoordinate2D(latitude: 50.6336329, longitude: 3.0629236),
        address:"54 Rue de Béthune, 59800 Lille",
        numberPhone: "0 826 88 07 00",
        photo: "majestic-lille",
        website : "https://www.ugc.fr/cinema.html?id=46"
        ),
    Cinema(
        name: "Cinéma l'Univers",
        coordinate: CLLocationCoordinate2D(latitude: 50.623676, longitude: 3.0743),
        address: "16 Rue Georges Danton, 59000 Lille",
        numberPhone: "03 20 52 73 48",
        photo: "univers",
        website : "https://lunivers.org"

    ),
    Cinema(
        name: "Cinéma le Kinépolis",
        coordinate: CLLocationCoordinate2D(latitude: 50.652185, longitude: 2.982554),
        address: "1 Rue du Château d'Isenghien, 59160 Lille",
        numberPhone: "03 20 17 04 00",
        photo:"kinepolis",
        website : "https://www.kinepolis.fr/fr/cinema/lille"
        ),
    Cinema(
        name: "Cinéma le Majestic Douai",
        coordinate: CLLocationCoordinate2D(latitude: 50.3767365, longitude: 3.0769928),
        address: "600 Boulevard de la République, 59500 Douai",
        numberPhone: "03 27 86 95 01",
        photo:"majestic-douai",
        website : "https://majestic-douai.com"
        )
           
]
