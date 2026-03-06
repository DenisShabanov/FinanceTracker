//
//  Color.swift
//  FinanceTracker
//
//  Created by Denis Shabanov on 06.03.2026.
//

import Foundation
import SwiftUI

extension Color {
    
    static let theme = ColorTheme()
    
}

struct ColorTheme {
    
    let accent = Color("AccentAppColor")
    let background = Color("BackgroundAppTheme")
    let foodAndDrink = Color("FoodAndDrinkTheme")
    let health = Color("HealthTheme")
    let housing = Color("HousingTheme")
    let other = Color("OtherTheme")
    let shopping = Color("ShoppingTheme")
    let transport = Color("TransportTheme")
    
}
