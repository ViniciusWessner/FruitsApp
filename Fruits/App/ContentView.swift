//
//  ContentView.swift
//  Fruits
//
//  Created by Vinicius Wessner on 26/03/24.
//

import SwiftUI

struct ContentView: View {
    // MARK:  Propriedades
    var fruits: [Fruit] = fruitsData
    @State var isShowingSettings: Bool = false
    
    // MARK:  Body
    var body: some View {
        NavigationView {
            List{
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(destination: FruitDetailView(fruit: item)){
                        FruitsRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                }
            }// list
            .navigationTitle("Frutas")
            .navigationBarItems(
                trailing:
                    Button(action: {
                        isShowingSettings = true
                    }) {
                        Image(systemName: "slider.horizontal.3")
                    } //button
                    .sheet(isPresented: $isShowingSettings){
                        SettingsView()
                    }
            )
        }// NavigationView
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

#Preview {
    ContentView()
        
}
