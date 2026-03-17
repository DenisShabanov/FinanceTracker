//
//  DetailCategoryView.swift
//  FinanceTracker
//
//  Created by Denis Shabanov on 17.03.2026.
//

import SwiftUI

struct DetailCategoryView: View {
    
    //MARK: - State properies
    @State
    var title: String
    @State
    var icon: String
    @State
    var color: Color
    
    //MARK: - Body
    
    var body: some View {
        VStack {
            Text(title)
                .font(.title)
                .foregroundStyle(Color(asset: Colors.accentColor))
                .padding()
            CategoryIconComponent(icon: icon, color: color, iconSize: 68, frameW: 136, frameH: 136)

            Spacer()
            
        }
    }
}

//MARK: - Preview

#Preview {
    DetailCategoryView(title: "Shopping", icon: "cart", color: Color(asset: Colors.shoppingTheme))
}
