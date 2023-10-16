//
//  ColorPickerBootCamp.swift
//  SwiftBootComp
//
//  Created by Yogesh on 12/07/23.
//

import SwiftUI

struct ColorPickerBootCamp: View {
    
    @State var  backgroundColor: Color = .green
    var body: some View {
        ZStack{
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            ColorPicker("Select color",
                        selection: $backgroundColor, supportsOpacity: true)
            .padding()
            .background(Color.black)
            .cornerRadius(10)
            .foregroundColor(.white)
            .font(.headline)
            .padding(50)
        }
    }
}

struct ColorPickerBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerBootCamp()
    }
}
E
