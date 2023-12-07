//
//  LevelOneView.swift
//  NewNavigationPath
//
//  Created by David Gomez on 06/12/2023.
//

import SwiftUI

struct LevelOneView: View {
    @Environment(\.dismiss) var dismiss
    @Binding var isActive: Bool
    
    var body: some View {
        VStack {
            NavigationLink {
                LevelTwoView(isActive: $isActive)
            } label: {
                Text("Go deeper")
            }
            .padding()
            
            Button("Programmatically back button") {
                dismiss()
            }
            .padding()
        }
        .navigationTitle("One-Level Navigation View")
    }
}

#Preview {
    LevelOneView(isActive: .constant(true))
}
