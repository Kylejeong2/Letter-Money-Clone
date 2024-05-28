//
//  LetterCell.swift
//  Letter-Money
//
//  Created by Kyle Jeong on 5/26/24.
//

import SwiftUI

struct LetterCell: View {
    let letter: Letter
    
    var body: some View {
        NavigationLink(destination: LetterDetailView(title: letter.title, color: letter.color, money: letter.amount)){
            HStack {
                Circle()
                    .frame(width: 10, height: 10)
                    .foregroundColor(letter.color)
                VStack(alignment: .leading) {
                    Text(letter.title)
                        .foregroundColor(.white)
                }
                Spacer()
                Text("$\(letter.amount, specifier: "%.2f")")
                    .foregroundColor(.white)
            }
            .padding(20)
            .background(Color.gray.opacity(0.2))
            .cornerRadius(10)
        }
    }
}

struct LetterCell_Previews: PreviewProvider {
    static var previews: some View {
        LetterCell(letter: MockLetters.letter1)
            .preferredColorScheme(.dark)
    }
}
