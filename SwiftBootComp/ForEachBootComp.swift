//
//  ForEachBootComp.swift
//  SwiftBootComp
//
//  Created by Yogesh on 13/06/23.
//

import SwiftUI

struct ForEachBootComp: View {
    let data:[String] = ["Hi","Hello","Hey everyone "]
    let myString:String = "Hello"

    var body: some View {
//        VStack{
//            ForEach(0..<10)
//            { index in
//
//                HStack {
//                    Circle()
//                        .frame(width: 30, height: 30)
//                    Text("Index is  \(index)")
//                }
//
//            }
//        }
        VStack{
            ForEach(data.indices){index in
                
                Text("\(data[index]): \(index)")
            }
        }
    }
}

struct ForEachBootComp_Previews: PreviewProvider {
    static var previews: some View {
        ForEachBootComp()
    }
}
