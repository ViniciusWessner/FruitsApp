//
//  SettingsView.swift
//  Fruits
//
//  Created by Vinicius Wessner on 10/04/24.
//

import SwiftUI

struct SettingsView: View {
    // MARK:  propriedades
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnbording: Bool = false
    
    // MARK:  body
    var body: some View {
        NavigationView{
            ScrollView {
                VStack(spacing: 20){
                    // MARK:  section 1
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "fructus", labelImage: "info.circle")
                    ){
                        Divider().padding(.vertical, 4)
                        
                        HStack(alignment: .center, spacing: 15) {
                            Image(.logo)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                            
                            Text("Most fruits are naturally low in fat, sodium and calories. None have colesterol. Fruits are of many essential nutrients, including potassium, dietary fiber, vitamins, and much more")
                                .font(.footnote)
                        }
                    }
                    // MARK:  section 2
                    GroupBox(
                        label: SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")
                    ){
                        Divider().padding(.vertical, 4)
                        Text("If you wish, you can restart the aplplication by togle the switch in this box. That way it starts the onbording process and you will see the welcome screen again.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnbording) {
                            if isOnbording {
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.green)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.secondary)
                            }
                        }
                        .padding()
                        .background(
                            Color(uiColor: .tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                            )
                    }
                    
                    
                    // MARK:  section 3
                    GroupBox(
                        label: SettingsLabelView(labelText: "Developer", labelImage: "apps.iphone")
                    ){
                        SettingsRowView(name: "Developer", content: "Vinicius Wessner")
                        SettingsRowView(name: "Compatibility", content: "IOS 14 +")
                        SettingsRowView(name: "Webs Site", linkLabel: "Viniciuswessner.com", linkDestination: "viniciuwessner.vercel.com")
                        SettingsRowView(name: "Redes Social", linkLabel: "@wessnervini", linkDestination: "twitter.com/wessnervini")
                        SettingsRowView(name: "SwiftUi", content: "2.0")
                        SettingsRowView(name: "Version", content: "1.1.0")
                        
                    }
                }//vstacl
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(
                    trailing:
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }){
                            Image(systemName: "xmark")
                })
                .padding()
            }// scroll
        }// navigation
    }
}

#Preview {
    SettingsView()
        .preferredColorScheme(.dark)
}
