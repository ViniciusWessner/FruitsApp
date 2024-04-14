//
//  SettingsLabelView.swift
//  Fruits
//
//  Created by Vinicius Wessner on 10/04/24.
//

import SwiftUI

struct SettingsLabelView: View {
    // MARK:  propriedades
    var labelText: String
    var labelImage: String
    
    
    // MARK:  body
    var body: some View {
        HStack{
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

#Preview {
    SettingsLabelView(labelText: "fructos", labelImage: "info.circle")
}
