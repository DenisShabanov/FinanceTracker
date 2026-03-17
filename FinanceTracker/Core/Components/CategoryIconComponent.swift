//
//  CategoryIconComponent.swift
//  FinanceTracker
//
//  Created by Denis Shabanov on 17.03.2026.
//

import SwiftUI

struct CategoryIconComponent: View {
    
    //MARK: - Properties
    let icon: String
    let color: Color
    let iconSize: CGFloat
    let frameW: CGFloat
    let frameH: CGFloat
    
    //MARK: - body
    
    var body: some View {
        ZStack {
            Circle()
                .fill(color)

            Image(systemName: icon)
                .font(.system(size: iconSize))
                .foregroundStyle(Color(asset: Colors.backgroundAppTheme))
        }
        .frame(width: frameW, height: frameH)
    }
}

//MARK: - Preview

#Preview {
    CategoryIconComponent(icon: "cart", color: Color(asset: Colors.shoppingTheme), iconSize: 22, frameW: 48, frameH: 48)
}
