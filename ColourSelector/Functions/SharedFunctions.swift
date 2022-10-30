//
//  SharedFunctions.swift
//  ColourSelector
//
//  Created by Dai Jiaze on 2022-10-30.
//

import Foundation


func filtered(by hue: Double, from list: [SavedPalette]) -> [SavedPalette] {
    
    print("hue is \(hue)")
    print(list)
    
    let hueRange = (hue - 10.0 / 360.0)...(hue + 10.0 / 360.0)
    print("The search / filter range is \(hueRange)")
    
    var filteredResults: [SavedPalette] = []
    
    for palette in list {
        if hueRange.contains(palette.hue) {
            filteredResults.append(palette)
        }
    }
    
    return filteredResults
}
