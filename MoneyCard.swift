//
//  MoneyCard.swift
//  Letter-Money
//
//  Created by Kyle Jeong on 5/26/24.
//

import SwiftUI

struct MoneyCard: View {
    //    let account: Account
    let title: String
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 10) {
            Text(title)
                .font(.subheadline)
                .fontWeight(.semibold)
                .foregroundColor(.secondary)
            HStack {
                Text("May")
                    .font(.title2)
                    .bold()
                Spacer()
                Image(systemName: "chevron.right")
                    .foregroundColor(.gray)
            }
            HStack {
                VStack(alignment: .leading) {
                    Text("Money in")
                        .foregroundColor(.gray)
                    Text("$4,550.00")
                        .font(.title3)
                        .bold()
                }
                Spacer()
                VStack(alignment: .leading) {
                    Text("Money out")
                        .foregroundColor(.gray)
                    Text("$2,050.00")
                        .font(.title3)
                        .bold()
                }
            }
            HStack {
                Text("1 deposit")
                    .foregroundColor(.gray)
                Spacer()
                Text("11 expenses")
                    .foregroundColor(.gray)
            }
            Picker("", selection: .constant(0)) {
                Text("Monthly").tag(0)
                Text("Yearly").tag(1)
            }
            .pickerStyle(SegmentedPickerStyle())
        }
        .padding()
        .background(Color.gray.opacity(0.2))
        .cornerRadius(10)
        .padding(.horizontal)
    }
}

//struct MoneyCard_Previews: PreviewProvider {
//    static var previews: some View {
//        MoneyCard()
//    }
//}
