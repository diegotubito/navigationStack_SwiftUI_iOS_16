//
//  HomeViewThree.swift
//  NewNavigationPath
//
//  Created by David Gomez on 07/12/2023.
//

import SwiftUI

struct HomeViewThree: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack(spacing: 8) {
            Button("Back") {
                dismiss()
            }
            Button("Go to view 1 - we can't") {
                
            }
            Button("Go back to root") {
                
            }
        }
        .navigationTitle("Home: View 3")
    }
}

#Preview {
    HomeViewThree()
}
