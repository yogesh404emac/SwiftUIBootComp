//
//  ButtonStyleAndControlSizeButtonCamp.swift
//  SwiftBootComp
//
//  Created by Yogesh on 20/07/23.
//

import SwiftUI

struct ButtonStyleAndControlSizeButtonCamp: View {
    var body: some View {
        VStack{
            
            Button{
                
            } label: {
                Text("Button Title")
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(
//                .capsule
                .roundedRectangle(radius: 20)
            )
            .controlSize(.large)
            
            
            Button("Title"){
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
//            .buttonStyle(.plain)
            .buttonStyle(.borderedProminent)
            .controlSize(.large)

            Button("Button Title"){
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .controlSize(.large)
//            .buttonStyle(.bordered)
            .buttonStyle(.borderedProminent)
            .controlSize(.regular)
            
            Button("Button Title"){
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
//            .buttonStyle(.borderedProminent)
            .buttonStyle(.borderedProminent)
            .controlSize(.small)
            
            Button("Button Title"){
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
//            .buttonStyle(.borderless)
            .buttonStyle(.borderedProminent)
            .controlSize(.mini)
            
            
           
            
        }
        .padding()
    }
}

struct ButtonStyleAndControlSizeButtonCamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStyleAndControlSizeButtonCamp()
    }
}




