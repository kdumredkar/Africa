//
//  ExternalWebLinkView.swift
//  Africa
//
//  Created by Khiraj Umredkar on 24/01/24.
//

import SwiftUI

struct ExternalWebLinkView: View {
    // MARK: - properties
    let animal: Animal
    // MARK: - Body
    var body: some View {
        GroupBox {
            
            HStack {
                Image(systemName: "globe")
                Text("Wikipedia")
                Spacer()
                
                Group{
                    Image(systemName: "arrow.up.right.square")
                    
                    Link(animal.name, destination: (URL(string: animal.link) ??
                    URL(string: "https://wikipedia.org"))!)
                }
                .foregroundColor(.accentColor)
            }// HStack
        }// GroupBox
    }
}

#Preview {
    
    Group {
        var animals: [Animal] = Bundle.main.decode("animals.json")
        ExternalWebLinkView(animal: animals[1])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
