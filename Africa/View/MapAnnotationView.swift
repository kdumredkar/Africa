//
//  MapAnnotationView.swift
//  Africa
//
//  Created by Khiraj Umredkar on 05/06/24.
//

import SwiftUI

struct MapAnnotationView: View {
    
    
    
    var location: NationalParkLocation
    
    @State var animation: Double = 0.0
    
    var body: some View {
        ZStack {
            Circle()
                .fill(Color.accentColor)
                .frame(width: 54, height: 54, alignment: .center)
            
            Circle()
                .stroke(Color.accentColor, lineWidth: 2)
                .frame(width: 52, height: 52, alignment: .center)
                .scaleEffect(1 + CGFloat(animation))
                .opacity(1 - animation)
            
            Image(location.image)
                .resizable()
                .scaledToFit()
                .frame(width: 48, height: 48)
            .clipShape(.circle)
        }.onAppear {
            withAnimation(Animation.easeOut(duration: 2).repeatForever(autoreverses: false)) {
                animation = 1
            }
        }
    }
}

#Preview {
    Group {
        var locations: [NationalParkLocation] = Bundle.main.decode("locations.json")
        MapAnnotationView(location: locations[0])
    }
}
