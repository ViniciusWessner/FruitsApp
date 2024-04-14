//
//  FruitsRowView.swift
//  Fruits
//
//  Created by Vinicius Wessner on 05/04/24.
//

import SwiftUI

struct FruitsRowView: View {
    
    // MARK:  Propriedades
    var fruit: Fruit
    
    var body: some View {
        HStack{
            VStack{
                Image(fruit.image)
                    .renderingMode(.original)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80, height: 80)
                    .shadow(color: Color( red: 0, green: 0, blue: 0, opacity: 0.3), radius: 3, x: 2, y: 2)
                    .background(
                        LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom)
                    )
                    .cornerRadius(8)
            }
            VStack(alignment: .leading, spacing: 5) {
                Text(fruit.title)
                    .font(.title2)
                    .fontWeight(.bold)
                
                Text(fruit.headline)
                    .font(.caption)
                    .foregroundStyle(Color.secondary)
            }
        }//hstack
        
    }
}

#Preview {
    FruitsRowView(fruit: fruitsData[0])
        .previewLayout(.sizeThatFits)
        .padding()
}
