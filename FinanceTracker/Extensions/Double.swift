//
//  Double.swift
//  FinanceTracker
//
//  Created by Denis Shabanov on 17.03.2026.
//

import Foundation

extension Double {

    // USD
    private static let usdFormatter2 = currencyFormatter(
        localeIdentifier: "en_US",
        currencyCode: "USD",
        minimumFractionDigits: 2,
        maximumFractionDigits: 2
    )

    private static let usdFormatter6 = currencyFormatter(
        localeIdentifier: "en_US",
        currencyCode: "USD",
        minimumFractionDigits: 2,
        maximumFractionDigits: 6
    )

    // RUB
    private static let rubFormatter2 = currencyFormatter(
        localeIdentifier: "ru_RU",
        currencyCode: "RUB",
        minimumFractionDigits: 2,
        maximumFractionDigits: 2
    )

    private static let rubFormatter6 = currencyFormatter(
        localeIdentifier: "ru_RU",
        currencyCode: "RUB",
        minimumFractionDigits: 2,
        maximumFractionDigits: 6
    )

    private static func currencyFormatter(
        localeIdentifier: String,
        currencyCode: String,
        minimumFractionDigits: Int,
        maximumFractionDigits: Int
    ) -> NumberFormatter {
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .currency
        formatter.locale = Locale(identifier: localeIdentifier)
        formatter.currencyCode = currencyCode
        formatter.minimumFractionDigits = minimumFractionDigits
        formatter.maximumFractionDigits = maximumFractionDigits
        return formatter
    }

    func asUSDWith2Decimals() -> String {
        let number = NSNumber(value: self)
        return Self.usdFormatter2.string(from: number) ?? "$0.00"
    }

    func asUSDWith6Decimals() -> String {
        let number = NSNumber(value: self)
        return Self.usdFormatter6.string(from: number) ?? "$0.00"
    }

    func asRUBWith2Decimals() -> String {
        let number = NSNumber(value: self)
        return Self.rubFormatter2.string(from: number) ?? "0,00 ₽"
    }

    func asRUBWith6Decimals() -> String {
        let number = NSNumber(value: self)
        return Self.rubFormatter6.string(from: number) ?? "0,00 ₽"
    }
}
