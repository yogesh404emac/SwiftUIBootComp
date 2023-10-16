//
//  AnimationAndwithAnimationbootCamp.swift
//  SwiftBootComp
//
//  Created by Yogesh on 15/06/23.
//

import SwiftUI

@available(iOS, introduced: 13.0, deprecated: 15.0, message: "Use withAnimation or animation(_:value:) instead.")

struct AnimationAndwithAnimationbootCamp: View {
   
    @State var isAnimated :Bool = false
    
    var body: some View {
        VStack{
            Button("Button 1"){
            
                    isAnimated.toggle()

            }
            Spacer()
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                .fill(isAnimated ? Color.red : Color.green)
                .animation(Animation .default
                    .repeatForever(autoreverses:true))
                .frame(
                    width: isAnimated ? 100 : 300,
                    height: isAnimated ? 100 :300 )
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                .offset(y:isAnimated ? 200 : 0)
            Spacer()
            
        }
    }
}

struct AnimationAndwithAnimationbootCamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationAndwithAnimationbootCamp()
    }
}
