//
//  VstackHstackZstackBootCamp.swift
//  SwiftBootComp
//
//  Created by Yogesh on 12/06/23.
//

import SwiftUI

struct VstackHstackZstackBootCamp: View {
    //Vstack -> vertical
    //Hstack -> Horizontal
    //Zstack -> zIndex( back to front)
    var body: some View {
        //        ZStack(alignment: .center  ,content:
        //                {
        //                    Rectangle()
        //                        .fill(Color.orange)
        //                        .frame(width: 200, height: 200)
        //                    Rectangle()
        //                        .fill(Color.green)
        //                        .frame(width: 150, height: 150)
        //                    Rectangle()
        //                        .fill(Color.red)
        //                        .frame(width: 100, height: 100)
        //                }
        //        )}
//        ZStack(alignment: .top){
//            Rectangle()
//                .fill(Color.yellow)
//                .frame(width: 350, height: 500, alignment: .center)
//
//            VStack(alignment: .leading,spacing: 30) {
//                Rectangle()
//                    .fill(Color.red)
//                    .frame(width: 150, height:150)
//                Rectangle()
//                    .fill(Color.green)
//                    .frame(width: 100, height: 100)
//
//                HStack(alignment: .bottom) {
//                    Rectangle()
//                        .fill(Color.purple)
//                    .frame(width: 50, height: 50)
//
//                    Rectangle()
//                        .fill(Color.pink)
//                    .frame(width: 75, height: 75)
//
//                    Rectangle()
//                        .fill(Color.blue)
//                    .frame(width: 25, height: 25)
//                }
//                .background(Color.white)
//            }
//            .background(Color.black)
//        }
        
//        VStack(alignment:.center,spacing: 20){
//            Text("5")
//                .font(.largeTitle)
//                .underline()
//            Text("Items are in your cart")
//                .font(.caption)
//
//        }
        VStack(spacing: 50){
            ZStack{
                Circle()
                    .frame(width: 100, height: 100)
                
                Text("2")
                    .font(.title)
                    .foregroundColor(.white)
            }
            Text("1")
                .font(.title)
                .foregroundColor(.white)
                .background(
                    Circle()
                        .frame(width: 100, height: 100)
                )
        }
    }
}

struct VstackHstackZstackBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        VstackHstackZstackBootCamp()
    }
}
