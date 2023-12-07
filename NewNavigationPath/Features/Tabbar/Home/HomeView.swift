//
//  HomeView.swift
//  NewNavigationPath
//
//  Created by David Gomez on 06/12/2023.
//

import SwiftUI

struct HomeView: View {
    @State private var showFullScreenModal = false
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Home View")
                Spacer()
                NavigationLink(destination: LevelOneView()) {
                    Text("Go to level one")
                }
                .padding()
                Button("Show Modal View", action: {
                    showFullScreenModal = true
                })
                .padding()
                Spacer()
            }
            .fullScreenCover(isPresented: $showFullScreenModal) {
                LoginView()
            }
        }

    }
}

#Preview {
    HomeView()
}
