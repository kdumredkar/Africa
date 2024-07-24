//
//  VideoPlayerHelper.swift
//  Africa
//
//  Created by Khiraj Umredkar on 05/06/24.
//

import Foundation
import AVKit

var videoPlayer: AVPlayer?

func playVideo(filename: String, fileFormate: String) -> AVPlayer {
    
    if Bundle.main.url(forResource: filename, withExtension: fileFormate) != nil {
        videoPlayer = AVPlayer(url: Bundle.main.url(forResource: filename, withExtension: fileFormate)!)
        videoPlayer?.play()
    }
    return videoPlayer!
}
