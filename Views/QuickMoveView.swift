//
//  QuickMove.swift
//  Letter-Money
//
//  Created by Kyle Jeong on 5/27/24.
//

import SwiftUI

struct QuickMoveView: View {
    
    var body: some View {
        
        VStack(alignment: .leading){
            
            Text("Quick Move")
                .font(.title)
                .fontWeight(.bold)
                .padding(.horizontal)
            
            Text("Transfer money between letters or initiate external transfers")
                .font(.title3)
                .fontWeight(.semibold)
                .foregroundColor(.secondary)
                .padding(.horizontal)
            
            Section {
                //move bettween letters
                QuickMoveCell(image: "envelope", title: "Move between letters", description: "Instantly move money between letters")
                
                QuickMoveCell(image: "envelope", title: "External bank deposit", description: "Same day or up to 5 business days")
                
                // external bank deposit
            }
            .background(Color("DarkGray").opacity(0.9))
            .cornerRadius(20)
            
            VStack(alignment: .leading){
                Section {
                    Text("Fund account")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .padding()
                    
                    Text("Set up direct deposit or link external accounts with your account info below")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.secondary)
                        .padding(.horizontal)
                }

                
                Spacer()
                    .frame(height: 15)
                
                AccountNumber(title: "Routing Number", info: "8 7 6 5 4 3 2 1")
                AccountNumber(title: "Account Number", info: "1 2 3 4 5 6 7 8")
                AccountNumber(title: "Bank Info", info: "Pacific West Bank\n1300 SW 5th Ave, Suite 900\nPortland, OR 97201")
                
               
            }
            .frame(width: 400, height: 400)
            .background(Color("DarkGray").opacity(0.9))
            .cornerRadius(20)
            
            
            Spacer()
        }
        .padding()
        .padding(.horizontal, 5)
    }
}

struct QuickMove_Previews: PreviewProvider {
    static var previews: some View {
        QuickMoveView()
            .preferredColorScheme(.dark)
    }
}


struct AccountNumber: View {
    
    let title: String
    let info: String
    
    var body: some View {
        HStack {
            VStack{
                Text(title)
                    .font(.subheadline)
                    .fontWeight(.medium)
                    .foregroundColor(.secondary)
                    .frame(width: 300, alignment: .leading)
                
                Text(info)
                    .font(.subheadline)
                    .fontWeight(.medium)
                    .frame(width: 300, alignment: .leading)

            }
            .frame(width: 300, alignment: .leading)

            Spacer()
            
            //chevron arrow
            Image(systemName: "square.on.square")
                .foregroundColor(.white)
        }
        .padding()
        .frame(width: 400)
        .background(Color("DarkGray").opacity(0.4))
        .cornerRadius(10)
    }
}
