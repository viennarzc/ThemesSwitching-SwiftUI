//
//  ComponentView.swift
//  ThemeSwitch
//
//  Created by Viennarz Curtiz on 1/30/22.
//

import SwiftUI

struct ComponentView: View {
    var body: some View {
        HStack(spacing: 0) {
            ZStack {
                PrimaryColor()
                Text("Primary")
            }
            ZStack {
                
                SecondaryColor()
                Text("Secondary")
            }
            
            ZStack {
                ForegroundColor()
                Text("Foreground")
            }
            
            
        }
        .frame(height: 50, alignment: .center)
    }
}


struct ComponentView_Previews: PreviewProvider {
    static var previews: some View {
        ComponentView()
            .environmentObject(ThemeEnvironment())
    }
}
