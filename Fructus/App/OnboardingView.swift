//
//  OnboardingView.swift
//  Fructus
//
//  Created by 鈴木航太 on 2024/02/12.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        TabView {
            ForEach(0..<5) {
                item in FruitCardView()
            } // Loop
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
      
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
