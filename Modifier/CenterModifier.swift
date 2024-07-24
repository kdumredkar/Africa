//
//  CenterModifier.swift
//  Africa
//
//  Created by Khiraj Umredkar on 06/06/24.
//

import Foundation
import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
    }
}
