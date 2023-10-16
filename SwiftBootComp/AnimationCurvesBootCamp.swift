//
//  AnimationCurvesBootCamp.swift
//  SwiftBootComp
//
//  Created by Yogesh on 15/06/23.
//

import SwiftUI

struct AnimationCurvesBootCamp: View {
    @State var isAnimation: Bool = false
    let timing:Double = 5.0
    var body: some View {
        VStack{
            Button("Button"){
                isAnimation.toggle()
            }
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: isAnimation ? 350 : 50 , height: 100)
            //.animation(Animation.linear(duration: timing))
                .animation(.spring(
                    response: 0.5,
                    dampingFraction: 0.7,
                    blendDuration: 1.0))
//            RoundedRectangle(cornerRadius: 25.0)
//                .frame(width: isAnimation ? 350 : 50 , height: 100)
//                .animation(Animation.easeIn(duration: timing))
//
//            RoundedRectangle(cornerRadius: 25.0)
//                .frame(width: isAnimation ? 350 : 50 , height: 100)
//                .animation(Animation.easeInOut(duration: timing))
//            RoundedRectangle(cornerRadius: 25.0)
//                .frame(width: isAnimation ? 350 : 50 , height: 100)
//                .animation(Animation.easeOut(duration: timing))
            
        }
    }
}

struct AnimationCurvesBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationCurvesBootCamp()
    }
}
