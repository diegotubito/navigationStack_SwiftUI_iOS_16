//
//  HomeView.swift
//  NewNavigationPath
//
//  Created by David Gomez on 06/12/2023.
//

import SwiftUI

struct HomeView: View {
    @State private var isActive = false
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Home View")
                Spacer()
                NavigationLink("Go to Level One", destination: LevelOneView(isActive: $isActive), isActive: $isActive)
                .padding()
                Spacer()
            }
        }

    }
}

#Preview {
    HomeView()
}
