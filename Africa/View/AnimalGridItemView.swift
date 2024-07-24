//
//  AnimalGridItemView.swift
//  Africa
//
//  Created by Khiraj Umredkar on 05/06/24.
//

import SwiftUI

struct AnimalGridItemView: View {
    
    let animal: Animal
    var body: some View {
        Image(animal.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

#Preview {
    Group {
        let animals: [Animal] = Bundle.main.decode("animals.json")
        AnimalGridItemView(animal: animals[0])
    }
        
}
