//
//  HomeViewThree.swift
//  NewNavigationPath
//
//  Created by David Gomez on 07/12/2023.
//

import SwiftUI

struct HomeViewThree: View {
    @EnvironmentObject var coordinator: Coordinator
    
    var body: some View {
        VStack(spacing: 8) {
            Button("Back") {
                coordinator.pop()
            }
            Button("Go back to root") {
                coordinator.popToRoot()
            }
            Button("Go to view 1 - we can't") {
                coordinator.path.removeLast(2)
            }
        }
        .navigationTitle("Home: View 3")
    }
}
