//
//  Letter_MoneyApp.swift
//  Letter-Money
//
//  Created by Kyle Jeong on 5/26/24.
//

import SwiftUI

@main
struct Letter_MoneyApp: App {
    var body: some Scene {
        WindowGroup {
            LetterMoneyTabView()
                .preferredColorScheme(.dark)
        }
    }
}
