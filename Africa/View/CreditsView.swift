//
//  CreditsView.swift
//  Africa
//
//  Created by Khiraj Umredkar on 06/06/24.
//

import SwiftUI

struct CreditsView: View {
    //MARK :- Properties
    //MARK :- Body
    var body: some View {
        VStack {
            
            Image("compass")
                .resizable()
                .scaledToFit()
                .frame(width: 128, height: 128)
            
            Text("""
            Copyright © Khiraj Umredkar
            All Right Reserved
            Better app ♡ less code
            """)
            .font(.footnote)
            .multilineTextAlignment(.center)
        }//: VStack
        .padding()
        .opacity(0.4)
    }
}

#Preview {
    CreditsView()
}
