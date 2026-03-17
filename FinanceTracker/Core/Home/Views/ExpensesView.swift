//
//  ExpensesView.swift
//  FinanceTracker
//
//  Created by Denis Shabanov on 16.03.2026.
//

import SwiftUI

struct ExpensesView: View {
    
    //MARK: - Body
    
    var body: some View {
        VStack {
            VStack {
                expenseSection
                moneySection
            }
            .padding()
        }
        .padding()
        .cardModifier()
    }
}

//MARK: - Layout

extension ExpensesView {
    
    private var expenseSection: some View {
        HStack {
            Text(L10n.HomeView.Balance.thisMonth)
            Spacer()
            Text(L10n.HomeView.Balance.available)
        }
        .font(.callout)
        .foregroundStyle(Color(asset: Colors.otherTheme))
    }
    
    private var moneySection: some View {
        HStack {
            Text("$5,662.75")
                .foregroundStyle(Color(asset: Colors.accentColor))
            Spacer()
            Text("$10,000.00")
                .foregroundStyle(Color(asset: Colors.transportTheme))
        }
        .font(.title)
        .padding(.vertical, 2)
    }
    
}

//MARK: - Preview

#Preview {
    ExpensesView()
}
