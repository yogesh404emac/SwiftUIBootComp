//
//  SafeAreaInsetBootCamp.swift
//  SwiftBootComp
//
//  Created by Yogesh on 27/07/23.
//

import SwiftUI

struct SafeAreaInsetBootCamp: View {
    var body: some View {
        NavigationStack{
            List(0..<10){ _ in
                Rectangle()
                    .frame(height: 300)
                
            }
            .navigationTitle("Safe Area Insets")
            .navigationBarTitleDisplayMode(.inline)
//            .overlay (
//                Text("Hi")
//                    .frame(maxWidth: .infinity)
//                    .background(Color.yellow)
//
//                ,alignment:.bottom
//            )
//            .safeAreaInset(edge: .top, alignment: .trailing,spacing: nil) {
//                Text("Hi")
//
////                    .frame(maxWidth: .infinity)
//                    .padding()
//                    .background(Color.yellow)
//                    .clipShape(Circle())
//                    .padding()
            
//}
            .safeAreaInset(edge: .top, alignment: .trailing,spacing: nil) {
                 Text("Hi")
                    .frame(maxWidth: .infinity)
                     //.padding()
                    .background(Color.yellow.edgesIgnoringSafeArea(.bottom))
//                     .clipShape(Circle())
                     //.padding()
             }
        }
    }
}

struct SafeAreaInsetBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaInsetBootCamp()
    }
}
