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
                Text("Home View")
                Spacer()
                NavigationLink(destination: LevelOneView()) {
                    Text("Go to level one")
                }
                Spacer()
            }
        }
    }
}

#Preview {
    HomeView()
}
