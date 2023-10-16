//
//  BackgroundAndOverlaysBootCamp.swift
//  SwiftBootComp
//
//  Created by Yogesh on 11/06/23.
//

import SwiftUI

struct BackgroundAndOverlaysBootCamp: View {
    var body: some View {
        //Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//
//            .background(
//            //Color.red
////                LinearGradient(gradient: Gradient(colors:[Color.red,Color.blue]), startPoint: .leading, endPoint: .trailing)
//
//                Circle()
//                    .fill(LinearGradient(gradient: Gradient(colors: [Color.red,Color.blue]),  startPoint: .leading, endPoint: .trailing))
//                    .frame(width: 100, height: 100, alignment: .center)
//            )
//
//            .background(
//            Circle()
//                .fill(LinearGradient(gradient: Gradient(colors: [Color.blue,Color.red]),  startPoint: .leading, endPoint: .trailing))
//                .frame(width: 120, height: 120, alignment: .center)
//            )
        //Overlays
//        Circle()
//            .fill(Color.pink)
//            .frame(width: 100, height: 100)
//            .overlay(
//            Text("1")
//                .font(.largeTitle)
//                .foregroundColor(.white)
//            )
//            .background(
//            Circle()
//                .fill(Color.purple)
//                .frame(width: 110,height: 110)
//            )
        
//        Rectangle()
//            .frame(width: 110, height: 100)
//            .overlay(
//                Rectangle()
//                .fill(Color.blue)
//                .frame(width: 50, height: 50)
//                ,
//                alignment: .topLeading
//            )
//            .background(
//                Rectangle().fill(Color.red)
//                    .frame(width: 150, height: 150)
//                ,alignment: .bottomTrailing
//            )
        Image(systemName: "heart.fill")
            .font(.system(size:40))
            .foregroundColor(Color.white)
            .background(
            Circle()
                .fill(
                    LinearGradient(gradient: Gradient(colors:[Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)),Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1))]), startPoint: .topLeading , endPoint: .bottomLeading)
                )
                .frame(width: 100, height: 100, alignment: .center)
                .shadow(color:Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)),radius: 10, x: 0.0, y: 10)
                .overlay(
                    Circle()
                        .fill(Color.blue)
                        .frame(width: 35, height: 35)
                        .overlay(
                            Text("5")
                                .font(.headline)
                                .foregroundColor(Color.white)
                        )
                        .shadow(color:Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)),radius: 10, x: 5, y: 5)
                    ,alignment: .bottomTrailing
                )
            )
        
        
    }
}

struct BackgroundAndOverlaysBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundAndOverlaysBootCamp()
    }
}
