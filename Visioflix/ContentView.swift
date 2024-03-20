//
//  TapBar.swift
//  Visioflix
//
//  Created by apprenant52 on 18/03/2024.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
        TabView {
            LandingPage().tabItem {
                Image(systemName: "magnifyingglass")
                Text("Match")
            }
            Movies().tabItem {
                Image(systemName: "list.dash")
                Text("Liste")
            }

            MapsViews().tabItem {
                Image(systemName: "map.fill")
                Text("Cinémas")
            }
            ProfilView().tabItem {
                Image(systemName: "person.circle.fill")
                Text("Votre profil")
            }
        }
            .accentColor(.blue)
    }
}

#Preview {
    ContentView()
}
