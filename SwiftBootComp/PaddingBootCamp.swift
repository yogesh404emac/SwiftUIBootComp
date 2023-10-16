//
//  PaddingBootCamp.swift
//  SwiftBootComp
//
//  Created by Yogesh on 12/06/23.
//

import SwiftUI

struct PaddingBootCamp: View {
    var body: some View {
        VStack(alignment:.leading){
            Text("Hello world !" )
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom,20)
        
        Text("this is dummy text but multiple lines of this text used just for dummy bets way to add padding")
                .font(.body)

        }
        
        .padding()
        .padding(.vertical,30)
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(
                    color:Color.black.opacity(0.3)
                    , radius:10,x:0.0,y:10
                       )
        )
        .padding(.horizontal,10)
        
        
        
//        Text("Hello world !" )
    //            .background(Color.yellow)
    ////            .padding()
    //            .padding(.all,10)
    //            .padding(.leading,20)
    //            .background(Color.blue)
                .font(.largeTitle)
            .fontWeight(.semibold)
        
//            .frame(maxWidth: .infinity,alignment: .leading)
//            //.background(Color.red)
//            .padding(.leading,20)
        
    }
}

struct PaddingBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        PaddingBootCamp()
    }
}
