//
//  Balance.swift
//  Letter-Money
//
//  Created by Kyle Jeong on 5/26/24.
//

import SwiftUI

struct BalanceCard : View {
    
    let title: String
    let total: Double
    let other: Double
    let balance: Double
    let protected: Double
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 5) {
            Text(title)
                .foregroundColor(.gray)
            Text("$\(total, specifier: "%.2f")")
                .font(.largeTitle)
                .bold()
                .foregroundColor(.white)
            HStack {
                Text("Letters")
                    .foregroundColor(.gray)
                Spacer()
                Text("+ $\(other, specifier: "%.2f")")
                    .foregroundColor(.white)
            }
            HStack {
                Text("Balance")
                    .foregroundColor(.gray)
                Spacer()
                Text("= $\(balance, specifier: "%.2f")")
                    .foregroundColor(.white)
            }
            HStack {
                Text("Protected Savings")
                    .foregroundColor(.gray)
                Spacer()
                Text("$\(protected, specifier: "%.2f")")
                    .foregroundColor(.white)
            }
        }
        .padding()
        .background(Color.black.opacity(0.7))
        .cornerRadius(10)
        .padding(.horizontal)
    }
}


struct Balance_Previews: PreviewProvider {
    static var previews: some View {
        BalanceCard(title: "Available", total: 1600.00, other: 1400.00, balance: 3000.00, protected: 0.00)
    }
}
