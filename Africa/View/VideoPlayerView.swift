//
//  VideoPlayerView.swift
//  Africa
//
//  Created by Khiraj Umredkar on 05/06/24.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    //MARK :- Properties
    var videoSelected: String
    var videoTitle: String
    
    //MARK :- Body
    
    var body: some View {
        VStack {
            VideoPlayer(player: playVideo(filename: videoSelected, fileFormate: "mp4")) {
               
            }
            .overlay(
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32)
                    .padding(.top, 6)
                    .padding(.horizontal, 8)
                , alignment: .topLeading
            )
        }//:VStack
        .accentColor(.accentColor)
        .navigationBarTitle(videoTitle, displayMode: .inline)
    }
}

#Preview {
    NavigationView {
        VideoPlayerView(videoSelected: "lion", videoTitle: "Lion")
    }
}
