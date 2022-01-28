//
//  ThemeManager.swift
//  ThemeSwitch
//
//  Created by Viennarz Curtiz on 1/28/22.
//

import Foundation

final class ThemeManager {
    
    private var selectedTheme: Theme = Theme1()
    
    func getTheme() -> Theme {
        return selectedTheme
    }
    
    func set(theme: Theme) {
        self.selectedTheme = theme
    }
    
}
