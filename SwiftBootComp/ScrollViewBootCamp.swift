//
//  ScrollViewBootCamp.swift
//  SwiftBootComp
//
//  Created by Yogesh on 13/06/23.
//

import SwiftUI

struct ScrollViewBootCamp: View {
    var body: some View {
//        ScrollView(.vertical,showsIndicators: false,content: {
//            VStack{
//                ForEach(0..<50){ index in
//                    Rectangle()
//                        .fill(Color.blue)
//                        .frame(height: 300)
//                }
//
//
//            }
//                   })
        
        ScrollView{
            LazyVStack{
                ForEach(0..<100){ index in
                    ScrollView(.horizontal, showsIndicators: false, content: {
                        LazyHStack{
                            ForEach(0..<20){ index in
                                RoundedRectangle(cornerRadius: 25.0)
                                    .fill(Color.white)
                                    .frame(width: 100, height: 150)
                                    .shadow(color:Color.purple,radius: 10)
                                    .padding()
                            }
                        }
                    })
                   
                }
                
            }
        }
    }
}

struct ScrollViewBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewBootCamp()
    }
}
