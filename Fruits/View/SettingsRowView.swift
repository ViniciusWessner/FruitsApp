//
//  SettingsRowView.swift
//  Fruits
//
//  Created by Vinicius Wessner on 11/04/24.
//

import SwiftUI

struct SettingsRowView: View {
    
    // MARK:  variaveis
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    // MARK:  Body
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack{
                Text(name).foregroundStyle(.gray)
                Spacer()
                if (content != nil) {
                    Text(content!)
                } else if (linkLabel != nil && linkDestination != nil) {
                    Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundStyle(.pink)
                } else {
                    EmptyView()
                }
            }
        }
    }
}

#Preview {
        SettingsRowView(name: "Webseite", linkLabel: "Viniciuswessner", linkDestination: "viniciuwessner.vercel.com")
            .previewLayout(.fixed(width: 375, height: 60))
}
