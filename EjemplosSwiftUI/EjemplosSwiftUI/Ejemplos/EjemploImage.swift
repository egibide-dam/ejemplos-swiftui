//
//  EjemploImage.swift
//  EjemplosSwiftUI
//
//  Created by Ion Jaureguialzo Sarasola on 27/11/20.
//

import SwiftUI

// REF: Image: https://developer.apple.com/documentation/swiftui/image
// REF: Modificadores: https://developer.apple.com/documentation/swiftui/image-view-modifiers

struct EjemploImage: View {
    var body: some View {
        Image("Noa")
            .mask(Circle())
            .shadow(radius: 10)
    }
}

struct EjemploImage_Previews: PreviewProvider {
    static var previews: some View {
        EjemploImage()
    }
}
