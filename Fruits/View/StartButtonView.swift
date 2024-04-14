//
//  StartButtonView.swift
//  Fruits
//
//  Created by Vinicius Wessner on 02/04/24.
//

import SwiftUI

struct StartButtonView: View {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    var body: some View {
        Button(action: {
            isOnboarding = false
        }){
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
        }// button
                .accentColor(.white)
        
    }
}

#Preview {
    StartButtonView()
        .previewLayout(.sizeThatFits)
        .preferredColorScheme(.dark)
}
