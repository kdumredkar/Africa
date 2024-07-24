//
//  InsetFactView.swift
//  Africa
//
//  Created by Khiraj Umredkar on 23/01/24.
//

import SwiftUI

struct InsetFactView: View {
    // MARK: - properties
    let animal: Animal
    // MARK: - Body
    var body: some View {
       
            GroupBox {
                TabView {
                    ForEach(animal.fact, id: \.self) { fact in
                        Text(fact)
                    }
                }// TabView
                .tabViewStyle(PageTabViewStyle())
                .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
            }//: GroupBox
            
        
    }
}
// MARK: - Preview
#Preview {
    Group {
        var animals: [Animal] = Bundle.main.decode("animals.json")
        InsetFactView(animal: animals[1])
    }
}
