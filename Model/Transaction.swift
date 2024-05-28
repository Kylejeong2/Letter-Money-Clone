//
//  Transaction.swift
//  Letter-Money
//
//  Created by Kyle Jeong on 5/26/24.
//

import SwiftUI

struct Transaction: Identifiable {
    let id = UUID()
    let name: String
    let time: String
    let amount: Double
    let icon: String
}

struct MockData {
    
    static let transaction1 = Transaction(name: "Apartment Rent", time: "5:52 PM", amount: 1500.00, icon: "house")
    static let transaction2 = Transaction(name: "Target", time: "5:21 PM", amount: 70.00, icon: "cart")
    static let transaction3 = Transaction(name: "AMC Theaters #123", time: "6:00 PM", amount: 60.00, icon: "film")
    static let transaction4 = Transaction(name: "Starbucks", time: "8:15 AM", amount: 5.25, icon: "cart")
    static let transaction5 = Transaction(name: "Amazon", time: "10:30 AM", amount: 120.00, icon: "cart")
    static let transaction6 = Transaction(name: "Gas Station", time: "3:45 PM", amount: 40.50, icon: "car")
    
    static let transactions = [transaction1, transaction2, transaction3, transaction4, transaction5, transaction6]
    
}

