//
//  LetterCard.swift
//  Letter-Money
//
//  Created by Kyle Jeong on 5/28/24.
//

import SwiftUI

struct LetterCard: View {
    @State private var pick = 0
    let title: String
    let amount: Double
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            
            VStack(alignment: .leading){
                HStack {
                    Text(title.uppercased())
                        .font(.caption)
                        .foregroundColor(.gray)
                    Spacer()
                    Image(systemName: "chevron.left")
                        .foregroundColor(.gray)
                    Image(systemName: "chevron.right")
                        .foregroundColor(.gray)
                }
                
                Text("$\(String(format: "%.2f", amount))")
                    .font(.title2)
                    .bold()
            }
            
            ProgressView(value: amount, total: amount)
                .progressViewStyle(LinearProgressViewStyle(tint: Color.gray))
            
            VStack {
                HStack {
                    Text("Available")
                        .foregroundColor(.gray)
                    Spacer()
                    Text("$\(String(format: "%.2f", amount))")
                        .foregroundColor(.gray)
                }
                
                HStack {
                    Text("Other")
                        .foregroundColor(.gray)
                    Spacer()
                    Image(systemName: "chevron.down")
                        .foregroundColor(.gray)
                }
                
            }
            
            Picker(selection: $pick, label: Text("")) {
                Text("Monthly").tag(0)
                Text("Yearly").tag(1)
            }
            .pickerStyle(SegmentedPickerStyle())
        }
        .padding()
        .background(Color.gray.opacity(0.2))
        .cornerRadius(15)
        .padding(.horizontal)
    }
}

struct LetterCard_Previews: PreviewProvider {
    static var previews: some View {
        LetterCard(title: "May Spending", amount: 2050)
            .preferredColorScheme(.dark)
        
    }
}
