//
//  TabBarView.swift
//  NewNavigationPath
//
//  Created by David Gomez on 06/12/2023.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        VStack {
            TabView {
                HomeView()
                    .tabItem {
                        Image(systemName: "house")
                        Text("Home")
                    }
                SettingView()
                    .tabItem {
                        Image(systemName: "gearshape")
                        Text("Settings")
                    }
            }
        }
    }
}

#Preview {
    TabBarView()
}
