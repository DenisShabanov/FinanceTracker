// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command file_length implicit_return prefer_self_in_static_references

// MARK: - Strings

// swiftlint:disable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:disable nesting type_body_length type_name vertical_whitespace_opening_braces
public enum L10n {
  public enum Categories {
    /// Food & Drink
    public static let foodAndDrink = L10n.tr("Localizable", "categories.foodAndDrink", fallback: "Food & Drink")
    /// Health
    public static let health = L10n.tr("Localizable", "categories.health", fallback: "Health")
    /// Housing
    public static let housing = L10n.tr("Localizable", "categories.housing", fallback: "Housing")
    /// Other
    public static let other = L10n.tr("Localizable", "categories.other", fallback: "Other")
    /// Shopping
    public static let shopping = L10n.tr("Localizable", "categories.shopping", fallback: "Shopping")
    /// Transport
    public static let transport = L10n.tr("Localizable", "categories.transport", fallback: "Transport")
  }
  public enum GraphsView {
    /// Visual breakdown of your spending
    public static let subTitle = L10n.tr("Localizable", "graphsView.subTitle", fallback: "Visual breakdown of your spending")
    /// Expense Analytics
    public static let title = L10n.tr("Localizable", "graphsView.title", fallback: "Expense Analytics")
    public enum CategoryDistribution {
      /// Total Spending
      public static let spendingCount = L10n.tr("Localizable", "graphsView.categoryDistribution.spendingCount", fallback: "Total Spending")
      /// Category Distribution
      public static let title = L10n.tr("Localizable", "graphsView.categoryDistribution.title", fallback: "Category Distribution")
    }
    public enum MonthlyChart {
      /// Monthly Trend
      public static let title = L10n.tr("Localizable", "graphsView.monthlyChart.title", fallback: "Monthly Trend")
    }
  }
  public enum HomeView {
    /// Total Balance
    public static let title = L10n.tr("Localizable", "homeView.title", fallback: "Total Balance")
    public enum Balance {
      /// Available
      public static let available = L10n.tr("Localizable", "homeView.balance.available", fallback: "Available")
      /// This Month
      public static let thisMonth = L10n.tr("Localizable", "homeView.balance.thisMonth", fallback: "This Month")
    }
    public enum Categories {
      /// No categories yet
      public static let empty = L10n.tr("Localizable", "homeView.categories.empty", fallback: "No categories yet")
      /// Categories
      public static let title = L10n.tr("Localizable", "homeView.categories.title", fallback: "Categories")
    }
  }
  public enum ProfileView {
    /// Manage your account
    public static let subTitle = L10n.tr("Localizable", "profileView.subTitle", fallback: "Manage your account")
    /// Profile
    public static let title = L10n.tr("Localizable", "profileView.title", fallback: "Profile")
    public enum Options {
      /// Log Out
      public static let logOut = L10n.tr("Localizable", "profileView.options.logOut", fallback: "Log Out")
      /// Notifications
      public static let notifications = L10n.tr("Localizable", "profileView.options.notifications", fallback: "Notifications")
      /// Security
      public static let security = L10n.tr("Localizable", "profileView.options.security", fallback: "Security")
      /// Settings
      public static let settings = L10n.tr("Localizable", "profileView.options.settings", fallback: "Settings")
      /// Help & Support
      public static let support = L10n.tr("Localizable", "profileView.options.support", fallback: "Help & Support")
    }
  }
  public enum Tabs {
    /// Graphs
    public static let graphs = L10n.tr("Localizable", "tabs.graphs", fallback: "Graphs")
    /// Home
    public static let home = L10n.tr("Localizable", "tabs.home", fallback: "Home")
    /// Profile
    public static let profile = L10n.tr("Localizable", "tabs.profile", fallback: "Profile")
  }
}
// swiftlint:enable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:enable nesting type_body_length type_name vertical_whitespace_opening_braces

// MARK: - Implementation Details

extension L10n {
  private static func tr(_ table: String, _ key: String, _ args: CVarArg..., fallback value: String) -> String {
    let format = BundleToken.bundle.localizedString(forKey: key, value: value, table: table)
    return String(format: format, locale: Locale.current, arguments: args)
  }
}

// swiftlint:disable convenience_type
private final class BundleToken {
  static let bundle: Bundle = {
    #if SWIFT_PACKAGE
    return Bundle.module
    #else
    return Bundle(for: BundleToken.self)
    #endif
  }()
}
// swiftlint:enable convenience_type
