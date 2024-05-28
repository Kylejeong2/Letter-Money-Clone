//
//  AccountDetailsView.swift
//  Letter-Money
//
//  Created by Kyle Jeong on 5/28/24.
//

import SwiftUI

struct AccountDetailsView: View {
    var body: some View {
        ScrollView {
            
            VStack(alignment: .leading){
                
                Text("Account Details")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.horizontal)
                
                Text("Personal and banking information")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundColor(.secondary)
                    .padding(.horizontal)
                
                VStack(alignment: .leading){
                    
                    Text("Individual account")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .padding()
                    
                    
                    Spacer()
                        .frame(height: 15)
                    
                    AccountNumber(title: "Routing Number", info: "8 7 6 5 4 3 2 1")
                    AccountNumber(title: "Account Number", info: "1 2 3 4 5 6 7 8")
                    AccountNumber(title: "Bank Info", info: "Pacific West Bank\n1300 SW 5th Ave, Suite 900\nPortland, OR 97201")
                    
                }
                .frame(width: 400, height: 300)
                .background(Color("DarkGray").opacity(0.9))
                .cornerRadius(20)
                
                LongButton(color: Color("DarkGray"), title: "Invite partner")
                    .frame(width: 400, alignment: .center)
                
                Text("Invite a partner to upgrade to a family account")
                    .font(.system(size: 13))
                    .foregroundColor(.yellow.opacity(0.8))
                    .frame(width: 400)
            }
            .padding()
            .padding(.horizontal, 5)
            
            VStack(alignment: .leading){
                VStack(alignment: .leading){
                    Text("First name")
                        .font(.title3)
                        .foregroundColor(.secondary)
                    
                    Text("Kyle")
                        .font(.title)
                        .fontWeight(.bold)
                    
                }
                .frame(maxWidth: 360, alignment: .leading)
                
                Spacer()
                    .frame(height:20)
                
                VStack(alignment: .leading){
                    Text("Last name")
                        .font(.title3)
                        .foregroundColor(.secondary)
                    
                    Text("Jeong")
                        .font(.title)
                        .fontWeight(.bold)
                }
                
                Spacer()
                    .frame(height:20)
                
                VStack(alignment: .leading){
                    Text("Phone number")
                        .font(.title3)
                        .foregroundColor(.secondary)
                    
                    Text("123-456-7890")
                        .font(.title)
                        .fontWeight(.bold)
                }
                
            }
            .frame(width: 400, height: 300)
            .background(Color("DarkGray").opacity(0.9))
            .cornerRadius(20)
        }
        
    }
}

struct AccountDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        AccountDetailsView()
            .preferredColorScheme(.dark)
    }
}
