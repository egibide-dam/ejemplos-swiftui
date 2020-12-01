//
//  EjemploRotacion.swift
//  EjemplosSwiftUI
//
//  Created by Ion Jaureguialzo Sarasola on 1/12/20.
//

import SwiftUI

// REF: https://www.hackingwithswift.com/quick-start/swiftui/swiftuis-built-in-shapes
// REF: https://www.hackingwithswift.com/books/ios-swiftui/changing-a-views-layout-in-response-to-size-classes

struct EjemploRotacion: View {

    @Environment(\.verticalSizeClass) var sizeClass

    var body: some View {
        ZStack {

            if sizeClass == .regular {
                VStack {
                    Rectangle()
                        .fill(Color("MiColor"))
                        .frame(width: 200, height: 200)

                    RoundedRectangle(cornerRadius: 25, style: .continuous)
                        .fill(Color(.sRGB, red: 0.5, green: 0.5, blue: 0.5, opacity: 0.2))
                        .frame(width: 300, height: 300)

                    Capsule()
                        .fill(Color.green)
                        .frame(width: 250, height: 50)

                    Ellipse()
                        .fill(Color.blue)
                        .frame(width: 100, height: 50)

                    Circle()
                        .fill(Color(UIColor.systemTeal))
                        .frame(width: 100, height: 50)
                }
            } else {
                HStack {
                    RoundedRectangle(cornerRadius: 25, style: .continuous)
                        .fill(Color("MiColor"))
                        .frame(width: 100, height: 100)
                    Spacer()
                    RoundedRectangle(cornerRadius: 25, style: .continuous)
                        .fill(Color("MiColor"))
                        .frame(width: 100, height: 100)
                }
            }

            Image("Noa")
                .mask(Circle())
                .shadow(radius: 10)
        }
            .padding(30)
    }
}

struct EjemploRotacion_Previews: PreviewProvider {
    static var previews: some View {
        EjemploRotacion()
    }
}
