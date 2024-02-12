//
//  StartButtonView.swift
//  Fructus
//
//  Created by 鈴木航太 on 2024/02/12.
//

import SwiftUI

struct StartButtonView: View {
    // MARK: -Propaty
    
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    // MARK: -Body
    var body: some View {
        Button {
            isOnboarding = false
        } label: {
            HStack(spacing: 8) {
                
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(Color.white, lineWidth: 1.25)
            )
           
        } // Button
        .accentColor(Color.white)
        
    }
}

// MRK- PREVIEW

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .previewLayout(.sizeThatFits)
    }
}
