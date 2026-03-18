//
//  Date.swift
//  FinanceTracker
//
//  Created by Denis Shabanov on 18.03.2026.
//

import Foundation

extension Date {

    enum AppDateFormat {
        case us
        case eu
    }

    private static let usDateFormatter = makeFormatter(
        locale: Locale(identifier: "en_US_POSIX"),
        dateFormat: "MM/dd/yyyy hh:mm a"
    )

    private static let euDateFormatter = makeFormatter(
        locale: Locale(identifier: "en_GB"),
        dateFormat: "dd/MM/yyyy HH:mm"
    )

    private static func makeFormatter(locale: Locale, dateFormat: String) -> DateFormatter {
        let formatter = DateFormatter()
        formatter.locale = locale
        formatter.calendar = Calendar(identifier: .gregorian)
        formatter.dateFormat = dateFormat
        return formatter
    }

    private var usDateString: String {
        Self.usDateFormatter.string(from: self)
    }

    private var euDateString: String {
        Self.euDateFormatter.string(from: self)
    }

    func asString(format: AppDateFormat) -> String {
        switch format {
        case .us:
            return usDateString
        case .eu:
            return euDateString
        }
    }
}
