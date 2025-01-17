//
//  VideoModel.swift
//  Africa
//
//  Created by Khiraj Umredkar on 03/06/24.
//

import Foundation

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    
    // Computed Property
    
    var thumbnail: String {
        "video-\(id)"
    }
}
