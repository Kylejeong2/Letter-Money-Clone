//
//  TransactionDetailView.swift
//  Letter-Money
//
//  Created by Kyle Jeong on 5/27/24.
//

import SwiftUI

struct TransactionDetailView: View {
    
    let title: String
    let price: Double
        
    var body: some View {
        VStack {
            Text(title)
                .font(.title3)
                .fontWeight(.semibold)
                .foregroundColor(.secondary)
            
            Text("$\(price, specifier: "%.2f")")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
            
            Button {
                print("available")
                
            } label: {
                Text("Available")
                    .frame(width: 120, height: 40)
                    .background(.white)
                    .foregroundColor(.black.opacity(0.8))
                    .cornerRadius(30)
            }
            
            // List of all "Letters"
            VStack(alignment: .leading, spacing: 10) {
                ForEach(MockLetters.letters) { letter in
                    LetterCell(letter: letter)
                }
            }
            .padding()
            .background(Color.black.opacity(0.7))
            .cornerRadius(10)
            
            Spacer()
        }
        .padding(.top, 20)
        .transition(AnyTransition.move(edge: .bottom))

    }
}

struct TransactionDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TransactionDetailView(title: "Apple Stores", price: 90.00)
            .preferredColorScheme(.dark)
    }
}
