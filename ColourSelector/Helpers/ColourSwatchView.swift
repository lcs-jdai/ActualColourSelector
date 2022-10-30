//
//  ColourSwatchView.swift
//  ColourSelector
//
//  Created by Dai Jiaze on 2022-10-28.
//

import SwiftUI

struct ColourSwatchView: View {
    
    //MARK: Stored Properties
    var colour: Color
    var size:Double
    
    //MARK: Computed Properties
    
    //Interface
    var body: some View {
        VStack{
            
        }
        .frame(width: 200,height: 200)
        .background(colour)
        
    }
}

struct ColourSwatchView_Previews: PreviewProvider {
    static var previews: some View {
        ColourSwatchView(colour: Color.blue, size: 300)
    }
}
