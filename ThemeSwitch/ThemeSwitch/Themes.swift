//
//  Themes.swift
//  ThemeSwitch
//
//  Created by Viennarz Curtiz on 1/28/22.
//

import SwiftUI

protocol Theme {
    var primaryColor: Color { get }
    var secondaryColor: Color { get }
    var backgroundColor: Color { get }
    var accentColor: Color { get }
    var foregroundColor: Color { get }
    
    var name: String { get }
}

struct Theme1: Theme {
    var name: String = "Theme1"
    
    var foregroundColor: Color = Color("1-ForegroundColor")
    
    var primaryColor: Color = Color("1-PrimaryColor")
    
    var secondaryColor: Color = Color("1-SecondaryColor")
    
    var backgroundColor: Color = Color("1-BackgroundColor")
    
    var accentColor: Color = Color("1-AccentColor")
    
    
}

struct Theme2: Theme {
    var name: String = "Theme2"
    
    var foregroundColor: Color = Color("2-ForegroundColor")
    
    var primaryColor: Color = Color("2-PrimaryColor")
    
    var secondaryColor: Color = Color("2-SecondaryColor")
    
    var backgroundColor: Color = Color("2-BackgroundColor")
    
    var accentColor: Color = Color("2-AccentColor")
    
    
    
}
