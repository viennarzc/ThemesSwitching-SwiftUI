//
//  PrimaryButtonStyle.swift
//  ThemeSwitch
//
//  Created by Viennarz Curtiz on 1/31/22.
//

import SwiftUI

struct PrimaryButtonStyle: ButtonStyle {
  func makeBody(configuration: Configuration) -> some View {
    configuration.label
      .font(.body)
      .foregroundColor(.white)
      .padding()
      .background(PrimaryColor())
      .clipShape(RoundedRectangle(cornerRadius: 16))
  }
    
    
}

struct AccentButtonStyle: ButtonStyle {
  func makeBody(configuration: Configuration) -> some View {
    configuration.label
      .font(.body)
      .foregroundColor(.white)
      .padding()
      .background(AccentColor())
      .clipShape(RoundedRectangle(cornerRadius: 16))
  }
    
    
}
