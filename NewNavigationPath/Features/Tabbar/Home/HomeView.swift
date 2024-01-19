//
//  HomeView.swift
//  NewNavigationPath
//
//  Created by David Gomez on 06/12/2023.
//

import SwiftUI

class Coordinator: ObservableObject {
    @Published var path: [Screen] = []
    
    enum Screen: Hashable {
        case viewOne(receivedValue: String)
        case viewTwo
        case viewThree
    }
    
    func pop() {
        path.removeLast()
    }
    
    func popToRoot() {
        path.removeAll()
    }
    
    func push(_ screen: Screen) {
        path.append(screen)
    }
    
    @ViewBuilder
    func getPage(_ screen: Screen) -> some View {
        switch screen {
        case .viewOne(receivedValue: let receivedValue):
            HomeViewOne(viewmodel: HomeOneViewModel(receivedValue: receivedValue))
        case .viewTwo:
            HomeViewTwo()
        case .viewThree:
            HomeViewThree()
        }
    }
}

struct HomeView: View {
   
    @StateObject var coordinator = Coordinator()
    
    var body: some View {
        NavigationStack(path: $coordinator.path) {
            VStack {
                Spacer()
                
                Button("Route to view 1", action: {
                    coordinator.push(.viewOne(receivedValue: "ABC Test"))
                })
                .padding()
                Spacer()
            }
            .navigationTitle("Home: Root")
            .navigationDestination(for: Coordinator.Screen.self) { screen in
                coordinator.getPage(screen)
            }
        }
        .environmentObject(coordinator)
        
    }
}

#Preview {
    HomeView()
}
