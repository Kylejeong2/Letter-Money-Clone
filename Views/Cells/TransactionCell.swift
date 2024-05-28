//
//  TransactionCell.swift
//  Letter-Money
//
//  Created by Kyle Jeong on 5/26/24.
//

import SwiftUI

struct TransactionCell: View {
    let transaction: Transaction
    
    var body: some View {
        NavigationLink(destination: TransactionDetailView(title: transaction.name, price: transaction.amount)){
            HStack {
                Image(systemName: transaction.icon)
                    .font(.title2)
                    .foregroundColor(.white)
                VStack(alignment: .leading) {
                    Text(transaction.name)
                        .foregroundColor(.white)
                    Text(transaction.time)
                        .foregroundColor(.gray)
                }
                Spacer()
                Text("$\(transaction.amount, specifier: "%.2f")")
                    .foregroundColor(.white)
            }
            .padding(20)
            .background(Color.gray.opacity(0.2))
            .cornerRadius(10)
            
        }
    }
}

struct TransactionCell_Previews: PreviewProvider {
    static var previews: some View {
        TransactionCell(transaction: MockData.transaction1)
            .preferredColorScheme(.dark)
    }
}
