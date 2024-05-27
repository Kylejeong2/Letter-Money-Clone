//
//  Letter.swift
//  Letter-Money
//
//  Created by Kyle Jeong on 5/26/24.
//

import SwiftUI

struct Letter: Identifiable {
    let id = UUID()
    let title: String
    let amount: Double
    let color: Color
    
}

struct MockLetters {
    
    static let letter1 = Letter(title: "Fun Money", amount: 120.00, color: .yellow)
    static let letter2 = Letter(title: "Entertainment", amount: 200.00, color: .pink)
    static let letter3 = Letter(title: "Groceries", amount: 230.00, color: .green)
    static let letter4 = Letter(title: "Transportation", amount: 100.00, color: .blue)
    static let letter5 = Letter(title: "Rent", amount: 750.00, color: .orange )
    static let letter6 = Letter(title: "Emergencies", amount: 0.00, color: .red)
    
    static let letters = [letter1, letter2, letter3, letter4, letter5, letter6]
}
