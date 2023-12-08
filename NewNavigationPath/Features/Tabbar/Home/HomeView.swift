//
//  HomeView.swift
//  NewNavigationPath
//
//  Created by David Gomez on 06/12/2023.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                NavigationLink("Route to View 1", destination: HomeViewOne())
                .padding()
                Spacer()
            }
            .navigationTitle("Home: Root")
        }
    }
}

#Preview {
    HomeView()
}
