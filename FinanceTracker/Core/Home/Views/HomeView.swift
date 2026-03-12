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
                VStack(alignment: .leading) {
                    Text(L10n.HomeView.title)
                        .font(.headline)
                    Text("$15,662.75")
                        .font(.largeTitle)
                    
                }
                .foregroundStyle(Color(asset: Colors.accentColor))
                .padding()
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}

//MARK: - Preview

#Preview {
    HomeView()
}
