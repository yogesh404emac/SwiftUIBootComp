//
//  TransitionBootCamp.swift
//  SwiftBootComp
//
//  Created by Yogesh on 15/06/23.
//

import SwiftUI

struct TransitionBootCamp: View {
    @State var showView :Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom){
            
            VStack{
                Button("Button 1"){
                    showView.toggle()
                }
                Spacer()
            }
            if showView {
                RoundedRectangle(cornerRadius: 25.0)
                    .frame(height: UIScreen.main.bounds.height*0.5)
//                    .transition(.move(edge: .bottom))
//                    .transition(.move(edge: .leading))
//                    .transition(AnyTransition.scale.animation(.easeInOut))
                    .transition(.asymmetric(insertion: .move(edge: .bottom), removal:AnyTransition.opacity.animation(.easeInOut) ))
                
                    .animation(.easeOut)
            }
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct TransitionBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        TransitionBootCamp()
    }
}
