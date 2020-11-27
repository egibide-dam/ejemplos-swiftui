//
//  EjemploSlider.swift
//  EjemplosSwiftUI
//
//  Created by Ion Jaureguialzo Sarasola on 27/11/20.
//

import SwiftUI

// REF: Slider: https://developer.apple.com/documentation/swiftui/slider

struct EjemploSlider: View {

    @State private var speed = 50.0
    @State private var isEditing = false

    var body: some View {
        VStack {
            Slider(
                value: $speed,
                in: 0...100,
                onEditingChanged: { editing in
                    isEditing = editing
                }
            )
            Text(String(format: "%.2f", speed))
                .foregroundColor(isEditing ? .red : .blue)

            Slider(
                value: $speed,
                in: 0...100,
                step: 0.25,
                onEditingChanged: { editing in
                    isEditing = editing
                },
                minimumValueLabel: Text("0"),
                maximumValueLabel: Text("100")
            ) {
                Text("Speed")
            }
            Text(String(format: "%.2f", speed))
                .foregroundColor(isEditing ? .red : .blue)
        }
            .padding(.horizontal, 30)
    }
}

struct EjemploSlider_Previews: PreviewProvider {
    static var previews: some View {
        EjemploSlider()
    }
}
