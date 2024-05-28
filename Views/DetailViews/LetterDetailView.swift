//
//  LetterDetailView.swift
//  Letter-Money
//
//  Created by Kyle Jeong on 5/27/24.
//

import SwiftUI

struct LetterDetailView: View {
    @State private var spending = 0
    let title: String
    let color: Color
    let money: Double
    
    var body: some View {
        
        VStack {
            VStack{
                Text(title)
                    .font(.title)
                    .fontWeight(.bold)
                    .frame(width: 350, alignment: .leading)
                
                Text("$\(money, specifier: "%.2f")")
                    .font(.title3)
                    .fontWeight(.bold)
                    .frame(width: 350, alignment: .leading)
                    .padding(.bottom, 10)

                VStack {
                    HStack{
                        Text("Spending")
                            .font(.title3)
                            .fontWeight(.bold)
                        
                        Spacer()
                        // Button
                        Picker(selection: $spending, label: Text("")) {
                            Text("12M").tag(0)
                            Text("Max").tag(1)
                        }
                        .frame(width: 120, height: 10)
                        .pickerStyle(SegmentedPickerStyle())
                        
                    }
                    .padding()
                    .padding(.top, 10)
                    
                    HStack {
                        Text("MAY")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .foregroundColor(color)
                        
                        Spacer()
                        
                        Text("MONTHLY AVG")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .foregroundColor(color)
                    }
                    .padding(.horizontal)
                    
                    HStack {
                        Text("$0.00")
                        Spacer()
                        Text("$0.00")
                    }
                    .padding(.horizontal)
                    
                    Spacer()
                }
                .frame(width: 350, height: 300)
                .background(color.opacity(0.25))
                .cornerRadius(40)
            }
            .frame(width: 400, height: 450)
            .background(color.opacity(0.25))
            .cornerRadius(40)
            
            // List of letter transfers
            List {
                HStack {
                    Image(systemName: "arrow.left.arrow.right")
                    VStack(alignment: .leading) {
                        Text("Internal transfer")
                            .font(.headline)
                        Text("Available → \(title)")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                    Spacer()
                    Text("$\(money, specifier: "%.2f")")
                        .font(.headline)
                }
            }
            .listStyle(PlainListStyle())
        }
        
    }
}

struct LetterDetailView_Previews: PreviewProvider {
    static var previews: some View {
        LetterDetailView(title: "Fun Money", color: .yellow, money: 120.00)
            .preferredColorScheme(.dark)
    }
}
