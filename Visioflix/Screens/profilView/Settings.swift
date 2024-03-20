//
//  Settings.swift
//  ProjetPierre
//
//  Created by apprenant63 on 13/03/2024.
//

import SwiftUI


struct Settings: View {
    
    @State var notificationsEnabled = true
    @State var darkModeEnabled = false
    @State var selectedFontSize = 1 // Index pour choisir lequel est sélectionné par défaut
    @State var selectedLanguageIndex = 0
    @Environment(\.dismiss) var dismiss
    let languages = ["Français", "English", "Español", "Deutsch"]
    
    var body: some View {
        NavigationView {
            ZStack{
                colorBackground
                    .edgesIgnoringSafeArea(.top)
 
//         ---------------------------------------------------------
                
                // Activer Notifications toggle
                VStack(alignment: .leading) {
                    Toggle(isOn: $notificationsEnabled) {
                        Text("Activer notifications")
                            .font(.system(size: 23))
                            .foregroundColor(.white)
                    }
                    .padding()
//         ---------------------------------------------------------
                    
                    // Dark Mode toggle
                    Toggle(isOn: $darkModeEnabled) {
                        Text("Mode sombre")
                            .font(.system(size: 23))
                            .foregroundColor(.white)
                    }
                    .padding()
                    
//          ---------------------------------------------------------
                    
                    // Format picker
                    HStack {
                        Text("Format")
                        Spacer()
                        Picker(selection: $selectedFontSize, label: Text("")) {
                            Text("Petit").tag(0)
                            Text("Moyen").tag(1)
                            Text("Grand").tag(2)
                        }
                        .pickerStyle(SegmentedPickerStyle()) // Style du picker
                        .frame(width: 200)
                        
                    }
                    .font(.system(size: 23))
                    .padding()
                    .foregroundColor(.white)
//          ---------------------------------------------------------
                    
                    // Choix de la langue
                    HStack {
                        Text("Langue")
                            .font(.system(size: 23))
                            .foregroundColor(.white)
                        Spacer()
                        Picker(selection: $selectedLanguageIndex, label: Text("")) {
                            ForEach(0..<languages.count) { index in  // Pas de soluce pour ce msg d'erreur, je sais pas mais ça marche je laisse
                                Text(languages[index]).tag(index)
                            }
                        }
                        .pickerStyle(DefaultPickerStyle()) // Ici style du picker ( Add or delete pour changer de style )
                        .foregroundColor(.white) 
                    }
                   
                    .padding()
                    
                    Spacer()
                }
                .padding()
            }
            .navigationBarTitle("Paramètres")
            .navigationBarTitleDisplayMode(.inline)
            
        }  .navigationBarBackButtonHidden(true)
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


#Preview {
    Settings()
}


    #Preview {
        Settings()
    }
