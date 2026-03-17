//
//  DetailCategoryView.swift
//  FinanceTracker
//
//  Created by Denis Shabanov on 17.03.2026.
//

import SwiftUI

struct DetailCategoryView: View {
    
    @State
    var title: String
    
    //MARK: - Body
    
    var body: some View {
        VStack {
            Text(title)
            
            
        }
    }
}

//MARK: - Preview

#Preview {
    DetailCategoryView(title: "Shopping")
}
