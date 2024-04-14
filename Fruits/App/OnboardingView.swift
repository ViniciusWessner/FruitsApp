//
//  OnboardingView.swift
//  Fruits
//
//  Created by Vinicius Wessner on 02/04/24.
//

import SwiftUI

struct OnboardingView: View {
    
    // MARK:  Propriedades
    var fruits: [Fruit] = fruitsData

    
    
    // MARK:  Body
    var body: some View {
        TabView {
            ForEach(fruits[0..<3].shuffled()) { item in
                FruitCardView(fruit: item)
            } //loop
        }//Tabview
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
    
}

#Preview {
    OnboardingView(fruits: fruitsData)
}
