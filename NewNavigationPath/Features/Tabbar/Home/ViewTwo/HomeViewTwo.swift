//
//  LevelTwoView.swift
//  NewNavigationPath
//
//  Created by David Gomez on 06/12/2023.
//

import SwiftUI

struct HomeViewTwo: View {
    var body: some View {
        VStack(spacing: 8) {
            NavigationLink {
                HomeViewThree()
            } label: {
                Text("Route to View 3")
            }
        }
        .navigationTitle("Home: View 2")
    }
}

#Preview {
    HomeViewTwo()
}
