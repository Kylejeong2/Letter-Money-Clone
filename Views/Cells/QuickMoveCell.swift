//
//  QuickMoveCell.swift
//  Letter-Money
//
//  Created by Kyle Jeong on 5/27/24.
//

import SwiftUI

struct QuickMoveCell: View {
    
    let image: String
    let title: String
    let description: String
    
    var body: some View {
        HStack {
            // Logo
            Image(systemName: image)
                .padding(.horizontal, 5)
            
            // Title
            VStack{
                Text(title)
                    .font(.title3)
                    .fontWeight(.medium)
                    .frame(width: 300, alignment: .leading)
                
                Text(description)
                    .font(.subheadline)
                    .fontWeight(.medium)
                    .foregroundColor(.secondary)
                    .frame(width: 300, alignment: .leading)

            }
            .frame(width: 300, alignment: .leading)

            Spacer()
            
            //chevron arrow
            Image(systemName: "chevron.right")
                .foregroundColor(.white)
        }
        .padding()
        .frame(width: 400)
        .background(Color.black.opacity(0.4))
        .cornerRadius(10)
//        .padding(.horizontal, 5)
    }
}

struct QuickMoveCell_Previews: PreviewProvider {
    static var previews: some View {
        QuickMoveCell(image: "envelope", title: "Title", description: "Description of the cell")
            .preferredColorScheme(.dark)
    }
}
