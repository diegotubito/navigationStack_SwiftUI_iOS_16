//
//  LevelOneView.swift
//  NewNavigationPath
//
//  Created by David Gomez on 06/12/2023.
//

import SwiftUI

struct HomeViewOne: View {
    var body: some View {
        VStack(spacing: 8) {
            NavigationLink {
                HomeViewTwo()
            } label: {
                Text("Route to View 2")
            }
        }
        .navigationTitle("Home: View 1")
    }
}

#Preview {
    HomeViewOne()
}
