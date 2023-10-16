//
//  SliderBootCamp.swift
//  SwiftBootComp
//
//  Created by Yogesh on 12/07/23.
//

import SwiftUI

struct SliderBootCamp: View {
    @State var sliderValue: Double = 3
    @State var color:Color = .red
    var body: some View {
        
        VStack{
            Text("Rating:")
            Text(
                // \(silderValue)
                 String(format:"%.0f", sliderValue)
                ).foregroundColor(color)
            
//            Slider(value: $silderValue)
//            Slider(value: $silderValue,in:1...5)
//            Slider(value: $silderValue,in: 1...5,
//                   step: 1.0)
            Slider(
                value: $sliderValue,
                in: 1...5,
                step: 1.0,
                onEditingChanged: { (_) in
                    color = .blue
                },
                minimumValueLabel: Text("1"),
                maximumValueLabel: Text("2"), label: {
                    Text("Title")
                })
                .accentColor(.red)
        }
    }
}

struct SliderBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        SliderBootCamp()
    }
}
