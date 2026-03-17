//
//  CategoriesView.swift
//  FinanceTracker
//
//  Created by Denis Shabanov on 16.03.2026.
//

import SwiftUI

//MARK: - Enum

enum CategoryOption: Int, CaseIterable {
    
    case shopping
    case housing
    case transport
    case foodAndDrink
    case health
    case other
    
    var icon: String {
        switch self {
        case .shopping: return "cart"
        case .housing: return "house"
        case .transport: return "car"
        case .foodAndDrink: return "cup.and.saucer"
        case .health: return "heart"
        case .other: return "ellipsis"
        }
    }
    
    var title: String {
        switch self {
        case .shopping: return L10n.Categories.shopping
        case .housing: return L10n.Categories.housing
        case .transport: return L10n.Categories.transport
        case .foodAndDrink: return L10n.Categories.foodAndDrink
        case .health: return L10n.Categories.health
        case .other: return L10n.Categories.other
        }
    }
    
    var color: Color {
        switch self {
        case .shopping: return Color(asset: Colors.shoppingTheme)
        case .housing: return Color(asset: Colors.housingTheme)
        case .transport: return Color(asset: Colors.transportTheme)
        case .foodAndDrink: return Color(asset: Colors.foodAndDrinkTheme)
        case .health: return Color(asset: Colors.healthTheme)
        case .other: return Color(asset: Colors.otherTheme)
        }
    }
}

//MARK: - View

struct CategoriesView: View {
    
    //MARK: - Body
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text(L10n.HomeView.Categories.title)
                .font(.title)
                .foregroundStyle(Color(asset: Colors.accentColor))
            ForEach(CategoryOption.allCases, id: \.self) { category in
                NavigationLink {
                    DetailCategoryView(
                      title: category.title,
                      icon: category.icon,
                      color: category.color
                    )
                  } label: {
                    CategoryRowView(
                      icon: category.icon,
                      category: category.title,
                      expenses: "$123123",
                      color: category.color
                    )
                  }
                  
            }
        }
    }
}

//MARK: - Preview

#Preview {
    CategoriesView()
}
