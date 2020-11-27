//
//  EjemploText.swift
//  EjemplosSwiftUI
//
//  Created by Ion Jaureguialzo Sarasola on 27/11/20.
//

import SwiftUI

// REF: Text: https://developer.apple.com/documentation/swiftui/text

struct EjemploText: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Hamlet")
                .font(.title)
            Text("by William Shakespeare")
                .font(.system(size: 12, weight: .light, design: .serif))
                .italic()
            Text("To be, or not to be, that is the question:")
                .frame(width: 100)
            Text("Brevity is the soul of wit.")
                .frame(width: 100)
                .lineLimit(1)
        }
    }
}

struct EjemploText_Previews: PreviewProvider {
    static var previews: some View {
        EjemploText()
    }
}
