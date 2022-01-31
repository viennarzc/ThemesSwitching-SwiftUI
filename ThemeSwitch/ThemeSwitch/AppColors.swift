//
//  AppColors.swift
//  ThemeSwitch
//
//  Created by Viennarz Curtiz on 1/30/22.
//

import SwiftUI


struct ForegroundColor: View {
    @EnvironmentObject var themeEnv: ThemeEnvironment
    var body: some View {
        themeEnv.selectedTheme.foregroundColor
    }
}

struct PrimaryColor: View {
    @EnvironmentObject var themeEnv: ThemeEnvironment
    var body: some View {
        themeEnv.selectedTheme.primaryColor
    }
}

struct AccentColor: View {
    @EnvironmentObject var themeEnv: ThemeEnvironment
    var body: some View {
        themeEnv.selectedTheme.accentColor
    }
}


struct SecondaryColor: View {
    @EnvironmentObject var themeEnv: ThemeEnvironment
    
    var body: some View {
        themeEnv.selectedTheme.secondaryColor
    }
}
