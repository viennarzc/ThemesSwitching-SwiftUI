//
//  ThemeEnvironment.swift
//  ThemeSwitch
//
//  Created by Viennarz Curtiz on 1/28/22.
//

import SwiftUI

class ThemeEnvironment: ObservableObject {
    @Published var selectedTheme: Theme = Theme1()
    
    @AppStorage("selectedTheme") var selectedThemeAS = 0 {
        didSet {
            updateTheme()
        }
    }
    
    func updateTheme() {
        selectedTheme = ThemeManager.getTheme(selectedThemeAS)
    }
}
