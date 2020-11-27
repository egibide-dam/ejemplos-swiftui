//
//  EjemploButton.swift
//  EjemplosSwiftUI
//
//  Created by Ion Jaureguialzo Sarasola on 27/11/20.
//

import SwiftUI

// REF: Button: https://developer.apple.com/documentation/swiftui/button

struct EjemploButton: View {
    var body: some View {

        VStack(spacing: 20) {

            Button("Register", action: register)

            HStack(spacing: 20) {

                Button(action: signIn) {
                    Text("Sign In")
                }

                Button("Log Out", action: logOut)
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.red)
                    .cornerRadius(10.0)
            }
        }
    }

    func signIn() {
        print("Iniciar sesión")
    }

    func logOut() {
        print("Cerrar sesión")
    }

    func register() {
        print("Registrarse")
    }
}

struct EjemploButton_Previews: PreviewProvider {
    static var previews: some View {
        EjemploButton()
    }
}
