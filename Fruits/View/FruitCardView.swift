//
//  FruitCardView.swift
//  Fruits
//
//  Created by Vinicius Wessner on 26/03/24.
//

import SwiftUI

struct FruitCardView: View {
    
    // MARK:  propriedades
    @State private var isAnimating: Bool = false
    
    var fruit: Fruit
    
    // MARK:  body
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                
                // fruit image
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: .black.opacity(0.20), radius: 8, x: 6, y: 0)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                    
                //fruit title
                
                Text(fruit.title)
                    .foregroundStyle(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: .black.opacity(0.20), radius: 2, x: 2, y: 2)

                //fruit headline
                Text(fruit.headline)
                    .foregroundStyle(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                
                //button: start
                StartButtonView()
            }// vstack
        }// Zstack
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.7)){
                isAnimating = true
            }
        })
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
    }
}

// MARK:  preview
#Preview {
    FruitCardView(fruit: fruitsData[0])
        .previewLayout(.fixed(width: 320, height: 640))
}
