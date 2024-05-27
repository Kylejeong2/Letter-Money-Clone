//
//  AccountSettingsCard.swift
//  Letter-Money
//
//  Created by Kyle Jeong on 5/26/24.
//

import SwiftUI

struct AccountSettingsCard: View {
    
    let image: String
    let title: String
    
    var body: some View {
        HStack {
            // Logo
            Image(systemName: image)
            
            // Title
            Text(title)
                .font(.title3)
                .fontWeight(.medium)
            
            Spacer()
            
            //chevron arrow
            Image(systemName: "chevron.right")
                .foregroundColor(.gray)
        }
        .padding(5)
    }
}

struct AccountSettingsCard_Previews: PreviewProvider {
    static var previews: some View {
        AccountSettingsCard(image: "checkmark.shield", title: "Two-Factor Auth")
            .preferredColorScheme(.dark)
    }
}
