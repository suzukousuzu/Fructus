//
//  OnboardingView.swift
//  Fructus
//
//  Created by 鈴木航太 on 2024/02/12.
//

import SwiftUI

struct OnboardingView: View {
    
    var fruits: [Fruit] = fruitsData
    var body: some View {
        TabView {
            ForEach(fruits[0...5]) {
                fruit in
                FruitCardView(fruit: fruit)
                //FruitCardView()
            } // Loop
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
      
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitsData)
    }
}
