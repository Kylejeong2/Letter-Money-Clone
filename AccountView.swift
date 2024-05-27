//
//  AccountView.swift
//  Letter-Money
//
//  Created by Kyle Jeong on 5/26/24.
//

import SwiftUI

struct AccountView: View {
    let isChecked: Bool
    
    var body: some View {
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
            
            Section {
                AccountSettingsCard(image: "checkmark.shield", title: "Two-factor auth")
                AccountSettingsCard(image: "checkmark.shield", title: "Account Details")
                AccountSettingsCard(image: "checkmark.shield", title: "Support")
                AccountSettingsCard(image: "checkmark.shield", title: "Documents")
            }
            .padding(10)
            .frame(width: 350)
            .border(.white, width: 1)
            
            Spacer()
                .frame(height: 20)
            
            Section {
                AccountSettingsCard(image: "checkmark.shield", title: "Notifications")
                Toggle("Notifications")
                AccountSettingsCard(image: "checkmark.shield", title: "App Icon")
            }
            .padding(10)
            .frame(width: 350)
            .border(.white, width: 1)

            Spacer()
                .frame(height: 20)
            
            Button {
                print("Logging out")
            } label: {
                LongButton(color: Color("DarkRed"), title: "Log out")
            }
            
        }

    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView(isChecked: false)
            .preferredColorScheme(.dark)
    }
}
