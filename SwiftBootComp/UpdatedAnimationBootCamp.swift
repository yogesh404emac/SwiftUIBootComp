//
//  UpdatedAnimationBootCamp.swift
//  SwiftBootComp
//
//  Created by Yogesh on 27/07/23.
//

import SwiftUI

struct UpdatedAnimationBootCamp: View {
    @State private var animate1:Bool = false
    @State private var animate2:Bool = false
    
    var body: some View {
        ZStack{
            VStack(spacing:40){
                
                Button("Action 1"){
                    animate1.toggle()
                }
                Button("Action 2"){
                    animate2.toggle()
                }
                
                ZStack {
                    Rectangle()
                        .frame(width: 100,height: 100)
                        .frame(maxWidth: .infinity,alignment: animate1 ? .leading : .trailing)
                        .background(Color.green)
                        .frame(maxHeight: .infinity,alignment: animate2 ? .top : .bottom)
                        .background(Color.orange)
                }
                .frame(maxWidth: .infinity, maxHeight:.infinity)
                .background(Color.red)
            }
        }
        // deprecated
        //.animation(.spring())
        .animation(.spring(), value: animate1)
        .animation(.linear(duration: 5 ), value: animate2)
    }
}

struct UpdatedAnimationBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        UpdatedAnimationBootCamp()
    }
}
