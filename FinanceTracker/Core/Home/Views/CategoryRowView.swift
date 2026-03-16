//
//  CategoryRowView.swift
//  FinanceTracker
//
//  Created by Denis Shabanov on 16.03.2026.
//

import SwiftUI

struct CategoryRowView: View {
    
    //MARK: - Public properties
    
    let icon: String
    let category: String
    let expenses: String
    let color: Color
    
    //MARK: - Body
    
    var body: some View {
        HStack {
            Image(systemName: icon)
                .font(.system(size: 24, weight: .regular))
                .frame(width: 24, height: 24, alignment: .center)
                .foregroundStyle(Color(asset: Colors.backgroundAppTheme))
                .padding()
                .background(
                    Circle()
                        .fill(color)
                )
            Text(category)
                .font(.title2)
                .foregroundStyle(Color(asset: Colors.accentColor))
                .padding(.leading, 8)
            Spacer()
            Text(expenses)
                .font(.title3)
                .foregroundStyle(Color(asset: Colors.accentColor).opacity(0.7))
        }
        .frame(maxWidth: .infinity)
        .padding()
        .cardModifier()
    }
}

//MARK: - Preview

#Preview {
    CategoryRowView(icon: "cart", category: "Shopping", expenses: "$13121244", color: Color(asset: Colors.shoppingTheme))
}
