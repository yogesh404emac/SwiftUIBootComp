//
//  IgnoreAndSafeBootCamp.swift
//  SwiftBootComp
//
//  Created by Yogesh on 14/06/23.
//

import SwiftUI

struct IgnoreAndSafeBootCamp: View {
    var body: some View {
//        ZStack {
//            //background
//            Color.blue
//                .edgesIgnoringSafeArea(.all)
//
//
//            //foreground
//            VStack{
//                Text("Hello World..!")
//                Spacer()
//            }
//
//                .frame(maxWidth:.infinity,maxHeight:.infinity)
//                .background(Color.red)
//        }
        
        ScrollView{
            VStack {
                Text("Title goes here")
                    .font(.largeTitle)
                .frame(maxWidth:.infinity,alignment: .leading)

                ForEach(0..<10){index in
                    RoundedRectangle(cornerRadius:25.0)
                        .fill(Color.white)
                        .frame(height: 150)
                        .shadow(radius: 10)
                        .padding(20)
                }
            }
        }
    
    }
}

struct IgnoreAndSafeBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        IgnoreAndSafeBootCamp()
    }
}
