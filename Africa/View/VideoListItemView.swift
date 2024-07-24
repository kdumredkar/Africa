//
//  VideoListItem.swift
//  Africa
//
//  Created by Khiraj Umredkar on 03/06/24.
//

import SwiftUI

struct VideoListItemView: View {
    // MARK: - Properties
    
    let video: Video
    
    var body: some View {
        HStack(spacing: 10) {
            ZStack {
                Image(video.thumbnail)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 80)
                   .cornerRadius(9)
                
                Image(systemName: "play.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 32)
                    .shadow(radius: 4)
            }//ZStack
            
            VStack(alignment: .leading, spacing: 10) {
                Text(video.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundStyle(.accent)
                
                Text(video.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    
            }//VStack
        }//HStack
    }
}

#Preview {
//    var videos: [Video] = Bundle.main.decode("videos.json")
//      VideoListItem(video: videos[0])
    
    Group {
        var videos: [Video] = Bundle.main.decode("videos.json")
        VideoListItemView(video: videos[0])
        }
   

}
