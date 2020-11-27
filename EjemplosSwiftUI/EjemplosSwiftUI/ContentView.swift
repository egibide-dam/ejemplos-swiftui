//
//  ContentView.swift
//  EjemplosSwiftUI
//
//  Created by Ion Jaureguialzo Sarasola on 27/11/20.
//

import SwiftUI

// REF: SwiftUI: https://developer.apple.com/documentation/swiftui
// REF: Vistas y controles: https://developer.apple.com/documentation/swiftui/views-and-controls
// REF: Qué es ese "some" https://applecoding.com/pildoras-codigo/swift-some-tipos-opacos-retorno

struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                VStack {
                    EjemploText()
                    Divider()
                    EjemploTextField()
                    Divider()
                    EjemploImage()
                    Divider()
                    EjemploButton()
                    Divider()
                    EjemploPicker()
                    Divider()
                }
                VStack {
                    EjemploSlider()
                    Divider()
                }
            }.padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
