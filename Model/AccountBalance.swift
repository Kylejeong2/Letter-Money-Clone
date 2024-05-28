//
//  AccountBalance.swift
//  Letter-Money
//
//  Created by Kyle Jeong on 5/27/24.
//

import SwiftUI

final class AccountBalance: ObservableObject {
    @Published var letters: [Letter] = []
    @Published var transactions: [Transaction] = []
    @Published var available: Double = 0
    
    var totalBalance: Double {
        letters.reduce(0) { $0 + $1.amount } // adds up all the prices in the array
    }
    
}
