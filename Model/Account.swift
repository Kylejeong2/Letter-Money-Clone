//
//  Account.swift
//  Letter-Money
//
//  Created by Kyle Jeong on 5/26/24.
//

import SwiftUI

struct Account: Identifiable {
    let id = UUID()
    let name: String
    let available: Double
    let letters: [Letter]
    let transactions: [Transaction]
}

struct MockAccount {
    static let Account1 = Account(name: "Kyle Jeong", available: 1600, letters: MockLetters.letters, transactions: MockData.transactions)
    
}

