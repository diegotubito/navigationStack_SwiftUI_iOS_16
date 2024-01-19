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
            NavigationLink(value: Coordinator.Screen.viewThree) {
                Text("route to final view")
            }
        }
        .navigationTitle("Home: View 2")
    }
}
