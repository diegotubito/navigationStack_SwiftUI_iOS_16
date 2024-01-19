//
//  LevelOneView.swift
//  NewNavigationPath
//
//  Created by David Gomez on 06/12/2023.
//

import SwiftUI

class HomeOneViewModel: ObservableObject {
    var receivedValue: String
    
    init(receivedValue: String) {
        self.receivedValue = receivedValue
    }
}

struct HomeViewOne: View {
    @EnvironmentObject var coordinator: Coordinator
    @StateObject var viewmodel: HomeOneViewModel
    
    var body: some View {
        VStack(spacing: 8) {
            Button("route to view 2") {
                coordinator.push(.viewTwo)
            }
            
            Text(viewmodel.receivedValue)
        }
        .navigationTitle("Home: View 1")
    }
}
