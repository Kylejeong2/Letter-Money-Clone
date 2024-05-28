//
//  ContentView.swift
//  Letter-Money
//
//  Created by Kyle Jeong on 5/26/24.
//

import SwiftUI

struct LetterMoneyTabView: View {
    
    var body: some View {
        
        NavigationView {
            
            TabView {
                ActivityView()
                    .tabItem {
                        Label("Activity", systemImage: "newspaper")
                    }
                
                LettersView()
                    .tabItem {
                        Label("Letters", systemImage: "envelope")
                    }
                
                AccountView()
                    .tabItem {
                        Label("Account", systemImage: "person")
                    }
            }
            .transition(.move(edge: .leading))
            //            .background(.black)
            // .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
            // how to animate going between screens without having to manually create a
            // tab bar
            
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    NavigationLink(destination: AccountView()) {
                        Image(systemName: "person.circle.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 35, height: 35)
                            .accentColor(.secondary)
                    }
                    
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(destination: AccountDetailsView()) {
                        Image(systemName: "creditcard")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30)
                            .accentColor(.secondary)
                    }
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(destination: QuickMoveView()) {
                        Image(systemName: "arrow.right.arrow.left")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30)
                            .accentColor(.secondary)
                    }
                }
            }
            .navigationBarTitleDisplayMode(.inline) // gets rid of space between nav and content
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LetterMoneyTabView()
            .preferredColorScheme(.dark)
    }
}
