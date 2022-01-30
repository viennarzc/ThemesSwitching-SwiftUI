//
//  ThemeManager.swift
//  ThemeSwitch
//
//  Created by Viennarz Curtiz on 1/28/22.
//

import Foundation

final class ThemeManager {
    
    private static let themes: [Theme] = [Theme1(), Theme2()]

    static func getTheme(_ number: Int) -> Theme {
        return themes[number]
    }
        
}
