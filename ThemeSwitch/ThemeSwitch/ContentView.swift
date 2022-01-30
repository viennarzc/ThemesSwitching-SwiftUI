//
//  ContentView.swift
//  ThemeSwitch
//
//  Created by Viennarz Curtiz on 1/28/22.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var themeEnv: ThemeEnvironment
    @Environment(\.colorScheme) var colorScheme

    @State private var pickerValue: Int = 1
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical) {
                VStack(alignment: .leading, spacing: 16) {
                    Picker(selection: $pickerValue, label: Text("Picker")) {
                        Text("1").tag(1)
                        Text("2").tag(2)
                    }
                    .onChange(of: pickerValue, perform: { newValue in
                        print("new val",newValue - 1)
                        
                        themeEnv.selectedThemeAS = newValue - 1
                    })
                    .pickerStyle(.segmented)

                    
                    ZStack() {
                        ForegroundColor()
                        
                        VStack(alignment: .leading, spacing: 8) {
                            Image(systemName: "creditcard")
                            Text("Card Number")
                                .font(.caption2)
                            Text("9029 2131")
                                .font(.title)
                                .fontWeight(.semibold)
                        }
                        .padding(16)
                        
                    }
                    .frame(height: 140, alignment: .center)
                    .cornerRadius(16)
                    
                    
                    HStack(alignment: .center) {
                        VStack(alignment: .center, spacing: 8) {
                            Image(systemName: "creditcard")
                                .font(.system(size: 24, weight: .semibold))
                            Text("Rent")
                                .font(.caption2)
                        }
                        .padding(16)
                        .frame(height: 90, alignment: .center)
                        .background(PrimaryColor())
                        .cornerRadius(8)
                        
                        VStack(alignment: .center, spacing: 8) {
                            Image(systemName: "dollarsign.circle")
                                .font(.system(size: 24, weight: .semibold))
                            Text("Shopping")
                                .font(.caption2)
                        }
                        .padding(16)
                        .frame(height: 90, alignment: .center)
                        .background(SecondaryColor())
                        .cornerRadius(8)
                    }
                    
                    Spacer()
                    
                    Section {
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
                .padding()
                .navigationTitle(colorScheme == .dark ? "In dark mode" : "In light mode")
            }.onAppear {
                
                debugPrint(themeEnv.selectedTheme.name)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
            .environmentObject(ThemeEnvironment())
        ContentView()
            .preferredColorScheme(.light)
            .environmentObject(ThemeEnvironment())
        
    }
}
