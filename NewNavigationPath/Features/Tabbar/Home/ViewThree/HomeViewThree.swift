//
//  HomeViewThree.swift
//  NewNavigationPath
//
//  Created by David Gomez on 07/12/2023.
//

import SwiftUI

struct HomeViewThree: View {
  //  @Environment(\.dismiss) var dismiss
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack(spacing: 8) {
            Button("Back") {
                // Weird way of dismissing
                // dismiss()
                // or we can use the presentationMode
                presentationMode.wrappedValue.dismiss()
            }
            Button("Go back to root") {
                // We can do this with NavigationView using Bindings or EnvironmentObjects.
            }
            Button("Go to view 1 - we can't") {
                // We can't do that with NavigationView
            }
        }
        .navigationTitle("Home: View 3")
    }
}

#Preview {
    HomeViewThree()
}
