//
//  ContentView.swift
//  Letter-Money
//
//  Created by Kyle Jeong on 5/26/24.
//

import SwiftUI

struct LetterMoneyTabView: View {
    var body: some View {
        ZStack {
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
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button {
                            print("Go to accountview")
                        } label: {
                            Image(systemName: "person.circle.fill")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 35, height: 35)
                                .accentColor(.secondary)
                        }
                    }
                    
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                            print("account details button tapped")
                        } label: {
                            Image(systemName: "creditcard")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 35, height: 35)
                                .accentColor(.secondary)
                        }
                    }

                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                            print("Quic move button tapped")
                        } label: {
                            Image(systemName: "arrow.right.arrow.left")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 35, height: 35)
                                .accentColor(.secondary)
                        }
                    }
                }
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LetterMoneyTabView()
            .preferredColorScheme(.dark)
    }
}
