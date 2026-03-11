//
//  HomeView.swift
//  FinanceTracker
//
//  Created by Denis Shabanov on 11.03.2026.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack(spacing: 8) {
            Text(L10n.HomeView.title)
                .font(.title)
            Text(L10n.HomeView.Balance.Categories.title)
                .font(.subheadline)
                .foregroundStyle(.secondary)
        }
    }
}

#Preview {
    HomeView()
}
