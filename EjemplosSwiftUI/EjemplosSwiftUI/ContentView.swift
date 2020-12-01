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

        NavigationView {

            List() {
                NavigationLink("Text", destination: EjemploText().navigationTitle("Etiquetas"))
                NavigationLink("TextField", destination: EjemploTextField().navigationTitle("Entrada de texto"))
                NavigationLink("Image", destination: EjemploImage().navigationTitle("Imagen"))
                NavigationLink("Button", destination: EjemploButton().navigationTitle("Botones"))
                NavigationLink("Toggle", destination: EjemploToggle().navigationTitle("Interruptores"))
                NavigationLink("Picker", destination: EjemploPicker().navigationTitle("Selectores"))
                NavigationLink("Slider", destination: EjemploSlider().navigationTitle("Sliders"))
                Link("SwiftUI", destination: URL(string: "https://developer.apple.com/xcode/swiftui/")!)
            }
                .navigationBarTitle("Ejemplos")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
