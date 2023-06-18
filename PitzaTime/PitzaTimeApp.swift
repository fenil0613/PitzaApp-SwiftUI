//
//  PitzaTimeApp.swift
//  PitzaTime
//
//  Created by Fenil Bhanavadiya on 2023-06-01.
//

import SwiftUI

@main
struct PitzaTimeApp: App {
    var body: some Scene {
        WindowGroup {
            RootTabView()
                .environmentObject(UserPreferences())
        }
    }
}
