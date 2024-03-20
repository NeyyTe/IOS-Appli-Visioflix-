//
//  YoutubePlayer.swift
//  Visioflix
//
//  Created by apprenant73 on 15/03/2024.
//

import SwiftUI
import YouTubePlayerKit

struct YoutubePlayer: View {

    @StateObject
        var url: YouTubePlayer

        var body: some View {
            
           HStack(spacing: 50){

                YouTubePlayerView(url)
                   
                
            } .frame(width: 300, height: 250)
               .cornerRadius(10.0)
        }

    }


#Preview {
    YoutubePlayer(url:"https://www.youtube.com/watch?v=2hlD7dWp09M")
}
