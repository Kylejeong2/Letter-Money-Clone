//
//  LongButton.swift
//  Letter-Money
//
//  Created by Kyle Jeong on 5/26/24.
//

import SwiftUI

struct LongButton: View {
    let color: Color
    let title: String
    
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.semibold)
            .frame(width: 380, height: 50)
            .foregroundColor(.white)
            .background(color)
            .cornerRadius(10)
    }
}

struct LongButton_Previews: PreviewProvider {
    static var previews: some View {
        LongButton(color: .red, title: "ButtonTest")
            .preferredColorScheme(.dark)
    }
}
