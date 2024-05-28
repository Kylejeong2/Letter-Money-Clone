//
//  SplashScreenView.swift
//  Letter-Money
//
//  Created by Kyle Jeong on 5/27/24.
//

import SwiftUI

struct SplashScreenView: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    @State private var isAnimated: Bool = false
    
    var body: some View {
        if isActive {
            
            LetterMoneyTabView()
                .preferredColorScheme(.dark)

        } else {
            VStack {
                VStack {
                    Image(systemName: "envelope")
                        .font(.system(size: 80))
                        .foregroundColor(.white)
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear {
                    withAnimation(.easeIn(duration: 1.2)){
                        self.size = 0.9
                        self.opacity = 1.0
                    }
                }
            }
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                    self.isActive = true
                }
            }
        }
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
            .preferredColorScheme(.dark)
    }
}
