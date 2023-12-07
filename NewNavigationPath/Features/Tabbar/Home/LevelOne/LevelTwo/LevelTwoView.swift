//
//  LevelTwoView.swift
//  NewNavigationPath
//
//  Created by David Gomez on 06/12/2023.
//

import SwiftUI

struct LevelTwoView: View {
    @Binding var isActive: Bool
    
    var body: some View {
        VStack {
            Button("Go back to root") {
                isActive = false
            }
            
            Button("Go back 2 views") {
                // I can't do that with this approach
            }
        }
        .navigationTitle("Two-Level Deep Navigation View")
    }
}

#Preview {
    LevelTwoView(isActive: .constant(true))
}
