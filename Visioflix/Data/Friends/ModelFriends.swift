//
//  ModelFriends.swift
//  Visioflix
//
//  Created by apprenant73 on 18/03/2024.
//

import SwiftUI



struct Friend: Identifiable {
    let id = UUID()
    let names: String
    let imageProfil: String
    let date: String
    let discussion:String
}
