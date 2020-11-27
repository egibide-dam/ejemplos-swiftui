//
//  EjemploTextField.swift
//  EjemplosSwiftUI
//
//  Created by Ion Jaureguialzo Sarasola on 27/11/20.
//

import SwiftUI

// REF: TextField: https://developer.apple.com/documentation/swiftui/textfield

struct EjemploTextField: View {

    @State private var username: String = ""
    @State private var isEditing = false

    var body: some View {
        VStack(spacing: 20) {

            TextField(
                "User name (email address)",
                text: $username
            ) { isEditing in
                self.isEditing = isEditing
            } onCommit: {
                if(validate(name: username)) {
                    print("Ok")
                } else {
                    print("Error")
                }
            }
                .autocapitalization(.none)
                .disableAutocorrection(true)
                .padding(.horizontal, 30)

            Text(username)
                .foregroundColor(isEditing ? .red : .blue)

        }
            .textFieldStyle(RoundedBorderTextFieldStyle())
    }

    func validate(name: String) -> Bool {
        return name.count > 5
    }
}

struct EjemploTextField_Previews: PreviewProvider {
    static var previews: some View {
        EjemploTextField()
    }
}
