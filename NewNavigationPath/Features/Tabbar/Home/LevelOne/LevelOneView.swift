//
//  LevelOneView.swift
//  NewNavigationPath
//
//  Created by David Gomez on 06/12/2023.
//

import SwiftUI

struct LevelOneView: View {
    @Environment(\.presentationMode) var presentationMode
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            NavigationLink {
                LevelTwoView()
            } label: {
                Text("Go deeper")
            }
            .padding()
            
            Button("Programmatically back button") {
                presentationMode.wrappedValue.dismiss()
            }
            .padding()
        }
        .navigationTitle("One-Level Navigation View")
    }
}

#Preview {
    LevelOneView()
}
