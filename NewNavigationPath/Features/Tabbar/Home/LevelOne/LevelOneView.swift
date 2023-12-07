//
//  LevelOneView.swift
//  NewNavigationPath
//
//  Created by David Gomez on 06/12/2023.
//

import SwiftUI

struct LevelOneView: View {
    @Environment(\.dismiss) var dismiss
    @State private var showFullScreenModal = false
    
    var body: some View {
        VStack {
            NavigationLink {
                LevelTwoView()
            } label: {
                Text("Go deeper")
            }
            .padding()
            
            Button("Show Modal View") {
                showFullScreenModal = true
            }
            
            Button("Programmatically back button") {
                dismiss()
            }
            .padding()
        }
        .fullScreenCover(isPresented: $showFullScreenModal) {
            LoginView()
        }
        .navigationTitle("One-Level Navigation View")
    }
}

#Preview {
    LevelOneView()
}
