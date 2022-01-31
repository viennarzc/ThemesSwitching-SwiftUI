//
//  ThemeSwitchApp.swift
//  ThemeSwitch
//
//  Created by Viennarz Curtiz on 1/28/22.
//

import SwiftUI

@main
struct ThemeSwitchApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(ThemeEnvironment())
        }
    }
}
