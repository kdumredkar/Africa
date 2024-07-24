//
//  CoverImageView.swift
//  Africa
//
//  Created by Khiraj Umredkar on 23/01/24.
//

import SwiftUI

struct CoverImageView: View {
    // MARK: - properties
    
    let coverImages: [CoverImage] = Bundle.main.decode("covers.json")
    // MARK: - Body
    
    var body: some View {
        
        TabView {
            ForEach(coverImages) { item in
                Image(item.name)
                    .resizable()
                    .scaledToFill()
            }// : Loop
        }//: TabView
        .tabViewStyle(PageTabViewStyle())
        
    
    }
}

// MARK: - Preview
#Preview {
    CoverImageView()
}
