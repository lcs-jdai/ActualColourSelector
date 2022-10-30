//
//  SavedPalettesView.swift
//  ColourSelector
//
//  Created by Dai Jiaze on 2022-10-30.
//

import SwiftUI

struct SavedPalettesView: View {
    
    //MARK: Stored Properties
    @State private var selectedHue = 0.0
    
    // our list of monochromatic colours
    @Binding var savedPalettes: [SavedPalette]
    
    
    //MARK: Computed Properties
    private var hue: Double{
        return selectedHue / 360.0
    }
    
    
    private var baseColour: Color{
        return Color(hue: hue,
                     saturation: 0.8,
                     brightness: 0.9)
    }
    
    //Interface
    var body: some View {
        
        VStack(spacing: 20){
            
            //selecting the hue
            HStack{
                
                ColourSwatchView(colour: baseColour, size: 100)
                    .padding(.trailing)
                
                VStack(alignment: .leading){
                    Text("Hue")
                        .bold()
                    
                    Text("\(selectedHue.formatted(.number.precision(.fractionLength(1))))°")
                    
                    Slider(value: $selectedHue,
                           in: 0...360,
                           label: {Text("hue")},
                           minimumValueLabel: {Text("0")},
                           maximumValueLabel: {Text("360")})
                    
                }
                
            }
            
            HStack{
                Spacer()
                Button(action: {
                    selectedHue = 0.0
                    print("Resetting")
                }, label: {
                    Text("Reset")
                })
            }
           
            List(filtered(by: hue, from: savedPalettes)) { palette in
                MonochromaticPaletteView(hue: palette.hue, showTitle: false)
            }
        }
    }
    //MARK: Functions(Actions, Logics....)
   
    
}
    
    struct SavedPalettesView_Previews: PreviewProvider {
        static var previews: some View {
            LiveSavedPalettesView()
        }
        
        struct LiveSavedPalettesView: View{
            @State var palettes: [SavedPalette] = examplePalettes
            var body: some View{
                SavedPalettesView(savedPalettes: $palettes)
            }
            
        }
        
    }

