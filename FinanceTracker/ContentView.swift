//
//  ContentView.swift
//  FinanceTracker
//
//  Created by Denis Shabanov on 06.03.2026.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(Color(asset: Colors.housingTheme))
            Text(Texts.appHelloWorld)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
