//
//  EjemploImage.swift
//  EjemplosSwiftUI
//
//  Created by Ion Jaureguialzo Sarasola on 27/11/20.
//

import SwiftUI

// REF: Image: https://developer.apple.com/documentation/swiftui/image
// REF: Modificadores: https://developer.apple.com/documentation/swiftui/image-view-modifiers
// REF: SF Symbols: https://developer.apple.com/sf-symbols/

struct EjemploImage: View {
    var body: some View {

        VStack {
            Spacer()

            Image("Noa")
                .mask(Circle())
                .shadow(radius: 10)

            Spacer()
                .frame(height: 100)

            HStack() {
                Image(systemName: "phone.circle.fill")
                    .font(.largeTitle)

                Image(systemName: "phone.down.circle.fill")
                    .renderingMode(.original)
                    .font(.largeTitle)

                Image(systemName: "message.circle.fill")
                    .renderingMode(.original)
                    .font(.largeTitle)
            }

            Spacer()
        }
    }
}

struct EjemploImage_Previews: PreviewProvider {
    static var previews: some View {
        EjemploImage()
    }
}
