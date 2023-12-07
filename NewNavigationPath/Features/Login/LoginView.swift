//
//  LoginView.swift
//  NewNavigationPath
//
//  Created by David Gomez on 06/12/2023.
//

import SwiftUI

struct LoginView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack {
            Text("Login View")
            Spacer()
            Button("Dismiss") {
                dismiss()
            }
        }
    }
}

#Preview {
    LoginView()
}
