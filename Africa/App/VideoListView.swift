//
//  VideoListView.swift
//  Africa
//
//  Created by Khiraj Umredkar on 23/01/24.
//

import SwiftUI

struct VideoListView: View {
    // MARK :- Properties
    
   @State var videos: [Video] = Bundle.main.decode("videos.json")
    
    let hepticImpact = UIImpactFeedbackGenerator(style: .medium)
    
    
    // MARK :- Properties
    
    var body: some View {
        NavigationView {
            List {
                ForEach(videos) { item in
                    NavigationLink(destination: VideoPlayerView(videoSelected: item.id, videoTitle: item.name)) {
                        VideoListItemView(video: item)
                            .padding(.vertical, 8)
                    }
                }
            }//List
            .listStyle(InsetGroupedListStyle())
            .navigationBarTitle("Videos", displayMode: .inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        videos.shuffle()
                        hepticImpact.impactOccurred()
                    }) {
                        Image(systemName: "arrow.2.squarepath")
                    }
                }
            }
        }//NavigationView
        
    }
}

#Preview {
    VideoListView()
}
