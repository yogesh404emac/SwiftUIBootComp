//
//  IfElseBootCamp.swift
//  SwiftBootComp
//
//  Created by Yogesh on 15/06/23.
//

import SwiftUI

struct IfElseBootCamp: View {
    
    @State var showCircle: Bool = false
    @State var showRectangle: Bool = false
    @State var isLoadeding:Bool = false
    var body: some View {
        VStack(spacing:20){
            
            Button("IS LOADING: \(isLoadeding.description)"){
                isLoadeding.toggle()
            }
            if isLoadeding {
                ProgressView()
                    .frame(width: 100, height: 140)
            }
            
//            Button("Circle \(showCircle.description)"){
//                showCircle.toggle()
//            }
//            Button("Rectangle Button:\(showRectangle.description)"){
//                showRectangle.toggle()
//            }
//            if showCircle {
//                Circle()
//                    .frame(width: 100, height: 100)
//            }
//            if showRectangle{
//                Rectangle()
//                    .frame(width: 100, height: 100)
//            }
//
//            if showCircle && showRectangle {
//                RoundedRectangle(cornerRadius: 25.0).frame(width: 200,height: 100)
//            }
            Spacer()
        }
    }
}

struct IfElseBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        IfElseBootCamp()
    }
}
