//
//  ModelMaps.swift
//  Visioflix
//
//  Created by apprenant52 on 13/03/2024.
//

import Foundation
import MapKit

struct Cinema: Identifiable {
    let id = UUID()
    var name: String
    var coordinate: CLLocationCoordinate2D
    var address : String
    var numberPhone : String
    var photo : String
    var website : String
    
    
}
