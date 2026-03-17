//
//  Double.swift
//  FinanceTracker
//
//  Created by Denis Shabanov on 17.03.2026.
//

import Foundation

extension Double {

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

extension String {

    // Tolerant parsing for user input like "$1,234.50" or "1 234,50 ₽"
    func toCurrencyDouble() -> Double? {
        let trimmed = trimmingCharacters(in: .whitespacesAndNewlines)
        if trimmed.isEmpty { return nil }

        let lastDot = trimmed.lastIndex(of: ".")
        let lastComma = trimmed.lastIndex(of: ",")
        let decimalSeparator: Character?
        switch (lastDot, lastComma) {
        case (nil, nil):
            decimalSeparator = nil
        case (_?, nil):
            decimalSeparator = "."
        case (nil, _?):
            decimalSeparator = ","
        case (let dot?, let comma?):
            decimalSeparator = dot > comma ? "." : ","
        }

        var result = ""
        var hasDecimal = false

        for character in trimmed {
            if character.isNumber {
                result.append(character)
                continue
            }

            if character == "-" && result.isEmpty {
                result.append(character)
                continue
            }

            if let separator = decimalSeparator,
               (character == "." || character == ","),
               character == separator,
               !hasDecimal {
                result.append(".")
                hasDecimal = true
            }
        }

        if result.isEmpty || result == "-" { return nil }
        return Double(result)
    }

    func asUSDWith2Decimals() -> String? {
        toCurrencyDouble()?.asUSDWith2Decimals()
    }

    func asUSDWith6Decimals() -> String? {
        toCurrencyDouble()?.asUSDWith6Decimals()
    }

    func asRUBWith2Decimals() -> String? {
        toCurrencyDouble()?.asRUBWith2Decimals()
    }

    func asRUBWith6Decimals() -> String? {
        toCurrencyDouble()?.asRUBWith6Decimals()
    }
}
