//
//  MapView.swift
//  Africa
//
//  Created by Khiraj Umredkar on 23/01/24.
//

import SwiftUI
import MapKit

struct MapView: View {
    //MARK:- Properties
    
    @State private var region: MKCoordinateRegion = {
        var mapCordinate = CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599)
        var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
        var mapRegion = MKCoordinateRegion(center: mapCordinate, span: mapZoomLevel)
        
        return mapRegion
    }()
    
    let locations: [NationalParkLocation] = Bundle.main.decode("locations.json")
    
    
    
    //MARK:- BODY

    var body: some View {
        
        Map(
            coordinateRegion: $region,
            interactionModes: .all,
            showsUserLocation: true,
            annotationItems: locations,
            annotationContent: { item in
                //                  MapMarker(coordinate: item.location, tint: .accent)
                
                MapAnnotation(coordinate: item.location) {
                    //                      Image("logo")
                    //                          .resizable()
                    //                          .scaledToFit()
                    //                          .frame(width: 32, height: 32, alignment: .center)
                    
                    MapAnnotationView(location: item)
                }
            }
        ).overlay(
            HStack(alignment: .center, spacing: 12) {
                Image("compass")
                    .resizable()
                    .scaledToFit()
                .frame(width: 48, height: 48, alignment: .center)
                
                VStack(alignment: .leading, spacing: 2) {
                    HStack {
                        Text("Latitude:")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundColor(.accent)
                        Spacer()
                        Text("\(region.center.latitude):")
                            .font(.footnote)
                    }
                    HStack {
                        Text("Longitude:")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundColor(.accent)
                        Spacer()
                        Text("\(region.center.longitude):")
                            .font(.footnote)
                    }
                }
            }//:HStack
                .padding(.vertical, 12)
                .padding(.horizontal, 16)
                .background(
                    Color.black
                        .cornerRadius(8)
                        .opacity(0.6)
                )
                .padding(),alignment: .top
        )
    }
}

#Preview {
    MapView()
}
