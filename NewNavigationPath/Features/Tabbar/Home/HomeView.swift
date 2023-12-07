//
//  HomeView.swift
//  NewNavigationPath
//
//  Created by David Gomez on 06/12/2023.
//

import SwiftUI

struct HomeView: View {
    @State private var showFullScreenModal = false
    @State private var isActive = false
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Home View")
                Spacer()
                
                NavigationLink("Go to Level One", destination: LevelOneView(showFullScreenModal: $showFullScreenModal, isActive: $isActive), isActive: $isActive)
                
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
