//
//  EnvelopesView.swift
//  Letter-Money
//
//  Created by Kyle Jeong on 5/26/24.
//

import SwiftUI

struct LettersView: View {
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                // Balance
                BalanceCard(title: "Letters", total: 1400.00, other: 1600.00, balance: 3000.00, protected: 0.00)
                
                // Monthly Overview
                MoneyCard(title: "May Spending") // will take curr.account later
                
                // Letters
                VStack(alignment: .leading, spacing: 10) {
                    Text("Letters")
                        .font(.title2)
                        .bold()
                        .padding(.bottom, 5)
                    
                    ForEach(MockLetters.letters) { letter in
                        LetterCell(letter: letter)
                    }
                }
                .padding()
                .background(Color.black.opacity(0.7))
                .cornerRadius(10)
            }
        }
    }
}

struct EnvelopesView_Previews: PreviewProvider {
    static var previews: some View {
        LettersView()
            .preferredColorScheme(.dark)
    }
}
