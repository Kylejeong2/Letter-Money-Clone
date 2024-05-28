//
//  AccountView.swift
//  Letter-Money
//
//  Created by Kyle Jeong on 5/26/24.
//

import SwiftUI

struct AccountView: View {
    @State private var isChecked = false
    
    var body: some View {
        ScrollView {
            VStack {
                Text("Demo Account")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.secondary)
                
                Text("Kyle Jeong")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                Button {
                    print("Ordering card")
                } label: {
                    LongButton(color: Color.gray.opacity(0.2), title: "Order physical card")
                }
                
                Spacer()
                    .frame(height: 20)
                
                VStack {
                    AccountSettingsCell(image: "checkmark.shield", title: "Two-factor auth")
                    AccountSettingsCell(image: "creditcard", title: "Account details")
                    AccountSettingsCell(image: "lifepreserver", title: "Support")
                    AccountSettingsCell(image: "doc.text", title: "Documents")
                }
                .cornerRadius(20) /// make the background rounded
                .overlay( /// apply a rounded border
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(.gray, lineWidth: 2)
                )
                
                Spacer()
                    .frame(height: 20)
                
                VStack {
                    Toggle(isOn: $isChecked, label: {
                        HStack {
                            Image(systemName: "bell")
                                .foregroundColor(.white)
                            
                            Text("Notifications")
                                .font(.title3)
                                .fontWeight(.medium)
                        }
                    })
                        .padding()
                        .background(Color.black.opacity(0.8))
                        .cornerRadius(10)
                        .padding(.horizontal)
                    AccountSettingsCell(image: "paintbrush", title: "App Icon")
                }
                .cornerRadius(20) /// make the background rounded
                .overlay( /// apply a rounded border
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(.gray, lineWidth: 2)
                )
                
                Spacer()
                    .frame(height: 20)
                
                Button {
                    print("Logging out")
                } label: {
                    LongButton(color: Color("DarkRed"), title: "Log out")
                }
                
                Text("Copy of Envelope Money \n By Kyle Jeong 2024")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.secondary)
                    .frame(alignment: .center)
            }
        }
        .padding(.top, 10)
        .padding(.horizontal, 5)
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
            .preferredColorScheme(.dark)
    }
}
