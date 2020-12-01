//
//  EjemploPicker.swift
//  EjemplosSwiftUI
//
//  Created by Ion Jaureguialzo Sarasola on 27/11/20.
//

import SwiftUI

// REF: Picker: https://developer.apple.com/documentation/swiftui/picker

enum Flavor: String, CaseIterable, Identifiable {
    case chocolate
    case vanilla
    case strawberry

    var id: String { self.rawValue }
}

struct EjemploPicker: View {

    @State private var selectedFlavor = Flavor.chocolate
    @State private var selectedTopping = Flavor.vanilla

    var body: some View {
        VStack {
            Divider()

            Picker("Flavor", selection: $selectedFlavor) {
                Text("Chocolate").tag(Flavor.chocolate)
                Text("Vanilla").tag(Flavor.vanilla)
                Text("Strawberry").tag(Flavor.strawberry)
            }

            Divider()

            Spacer()
                .frame(height: 100)

            Divider()

            // REF: Identificador único para cada caso: https://www.hackingwithswift.com/books/ios-swiftui/why-does-self-work-for-foreach
            Picker("Topping", selection: $selectedTopping) {
                ForEach(Flavor.allCases, id: \.self) { flavor in
                    Text(flavor.rawValue.capitalized)
                }
            }
                .pickerStyle(SegmentedPickerStyle())

            Text("Selected flavor: \(selectedFlavor.rawValue)")
            Text("Selected topping: \(selectedTopping.rawValue)")

            Divider()
        }
            .padding(.horizontal, 30)
    }
}

struct EjemploPicker_Previews: PreviewProvider {
    static var previews: some View {
        EjemploPicker()
    }
}
