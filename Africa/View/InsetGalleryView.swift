//
//  InsetGalleryView.swift
//  Africa
//
//  Created by Khiraj Umredkar on 23/01/24.
//

import SwiftUI

struct InsetGalleryView: View {
    // MARK: - properties
  
    let animal: Animal
    
    // MARK: - Body
    var body: some View {
        
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 15) {
                ForEach(animal.gallery, id: \.self) { item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                    .cornerRadius(12)
                }
            }
        }
       
    }
}

#Preview {
    Group {
        var animals: [Animal] = Bundle.main.decode("animals.json")
        InsetGalleryView(animal: animals[1])
    }
}
