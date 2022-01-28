//
//  ThemeEnvironment.swift
//  ThemeSwitch
//
//  Created by Viennarz Curtiz on 1/28/22.
//

import SwiftUI

class ThemeEnvironment: ObservableObject {
    @Published var selectedTheme: Theme = Theme1()
}
