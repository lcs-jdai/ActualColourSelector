//
//  ColourSelectorApp.swift
//  ColourSelector
//
//  Created by Dai Jiaze on 2022-10-29.
//

import SwiftUI

@main
struct ColourSelectorApp: App {
    
    //MARK: Stored Properties
    @State private var savedPalettes: [SavedPalette] = []

    
    //MARK: Computed Properties
    
    var body: some Scene {
        WindowGroup {
            
            TabView{
                ContentView(savedPalettes: $savedPalettes)
                    .tabItem{
                        Image(systemName: "swatchpalette")
                        Text("Browse")
                    }
                SavedPalettesView(savedPalettes: $savedPalettes)
                    .tabItem{
                        Image(systemName: "list.dash")
                        Text("Review")
                    }
            }
        }
    }
}
