//
//  CategoryExpenseRowView.swift
//  FinanceTracker
//
//  Created by Denis Shabanov on 17.03.2026.
//

import SwiftUI

struct CategoryExpenseRowView: View {
    
    //MARK: - Body
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("На что потрачено")
                    .foregroundStyle(Color(asset: Colors.accentColor))
                Text("Дата")
                    .foregroundStyle(Color(asset: Colors.accentColor).opacity(0.6))
            }
            Spacer()
            Text("Потраченная сумма")
                .foregroundStyle(Color(asset: Colors.healthTheme))
        }
        .font(.headline)
        .padding()
        .cardModifier()
    }
}

//MARK: - Preview

#Preview {
    CategoryExpenseRowView()
}
