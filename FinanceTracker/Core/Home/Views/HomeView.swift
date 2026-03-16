//
//  HomeView.swift
//  FinanceTracker
//
//  Created by Denis Shabanov on 11.03.2026.
//

import SwiftUI

struct HomeView: View {
    
    //MARK: - Body
    
    var body: some View {
        ZStack {
            Color(asset: Colors.backgroundAppTheme)
                .ignoresSafeArea()
            
            ScrollView {
                VStack(alignment: .leading, spacing: 40) {
                    balance
                    ExpensesView()
                }
                .foregroundStyle(Color(asset: Colors.accentColor))
                .padding()
            }
        }
    }
}

//MARK: - Layout

extension HomeView {
    
    private var balance: some View {
        VStack(alignment: .leading) {
            Text(L10n.HomeView.title)
                .font(.headline)
            Text("$15,662.75")
                .font(.largeTitle)
        }
    }
    
}

//MARK: - Preview

#Preview {
    HomeView()
}
