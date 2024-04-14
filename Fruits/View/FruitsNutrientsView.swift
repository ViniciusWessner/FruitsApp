//
//  FruitsNutrientsView.swift
//  Fruits
//
//  Created by Vinicius Wessner on 10/04/24.
//

import SwiftUI

struct FruitsNutrientsView: View {
    // MARK:  Propriedades
    var fruit: Fruit
    let nutrients: [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]
    
    // MARK:  Body
    var body: some View {
        GroupBox() {
            DisclosureGroup("Nutritional value per 100g"){
                ForEach(0..<nutrients.count, id: \.self) { item in
                    Divider().padding(.vertical, 2)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundStyle(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
            .foregroundColor(.accentColor)
        }// box
    }
}

#Preview {
    FruitsNutrientsView(fruit: fruitsData[0])
        .preferredColorScheme(.dark)
}
