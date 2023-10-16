//
//  BadgesBootCamp.swift
//  SwiftBootComp
//
//  Created by Yogesh on 21/07/23.
//

import SwiftUI

//List
// TabView



struct BadgesBootCamp: View {
    var body: some View {
        
        List{
            Text("Hello, world!")
                .badge("New Items!")
            Text("Hello, world!")
                .badge(4)
            Text("Hello, world!")
            Text("Hello, world!")
        }
//        TabView{
//            Color.red
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }
//                .badge("New")
//            Color.green
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }
//
//            Color.blue
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }
//        }
    }
}

struct BadgesBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        BadgesBootCamp()
    }
}
