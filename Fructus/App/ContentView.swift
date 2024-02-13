//
//  ContentView.swift
//  Fructus
//
//  Created by 鈴木航太 on 2024/02/11.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isShowingSettings: Bool = false
    var fruits: [Fruit] = fruitsData
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { fruit in
                    
                    NavigationLink(destination: FruitDetailView(fruit: fruit)) {
                        FruitRowView(fruit: fruit)
                            .padding(.vertical, 4)
                    }
                    
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(
                trailing: Button(action: {
                    isShowingSettings = true
                }, label: {
                    Image(systemName: "slider.horizontal.3")
                })
                .sheet(isPresented: $isShowingSettings, content: {
                    SettingsView()
                })
            )
    
        }
        .navigationViewStyle(StackNavigationViewStyle())
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
