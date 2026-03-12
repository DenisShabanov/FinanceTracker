//
//  CustomCardModifier.swift
//  FinanceTracker
//
//  Created by Denis Shabanov on 12.03.2026.
//

import SwiftUI

struct CustomCardModifier: ViewModifier {
    
    //MARK: - Body
    
    func body(content: Content) -> some View {
        content
            .background(
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color(asset: Colors.cardAppColor))
                    .shadow(color: Color(asset: Colors.accentColor).opacity(0.3), radius: 4)
            )
    }
}

//MARK: - ViewModifier

extension View {
    
    func cardModifier() -> some View {
        self.modifier(CustomCardModifier())
    }
    
}
