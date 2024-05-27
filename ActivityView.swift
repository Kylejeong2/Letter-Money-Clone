//
//  ActivityView.swift
//  Letter-Money
//
//  Created by Kyle Jeong on 5/26/24.
//

import SwiftUI

struct ActivityView: View {
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                // Balance
                Balance(title: "Available", total: 1600.00, other: 1400.00, balance: 3000.00, protected: 0.00)
                
                // Monthly Overview
                MoneyCard(title: "Overview") // will take curr.account later
                
                // Transactions
                VStack(alignment: .leading, spacing: 10) {
                    Text("Transactions")
                        .font(.title2)
                        .bold()
                        .padding(.bottom, 5)
                    
                    ForEach(MockData.transactions) { transaction in
                        TransactionCell(transaction: transaction)
                    }
                }
                .padding()
                .background(Color.black.opacity(0.7))
                .cornerRadius(10)
                .padding(.horizontal)
            }
        }
        .ignoresSafeArea()
    }
}

struct ActivityView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityView()
            .preferredColorScheme(.dark)
    }
}
