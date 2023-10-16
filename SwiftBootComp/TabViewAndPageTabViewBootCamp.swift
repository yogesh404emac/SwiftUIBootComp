//
//  TabViewAndPageTabViewBootCamp.swift
//  SwiftBootComp
//
//  Created by Yogesh on 13/07/23.
//

import SwiftUI

struct TabViewAndPageTabViewBootCamp: View {
    @State var selectedTab:Int  = 0
    
    let icons: [String] = [
    "heart.fill","globe","house.fill","person.fill"
    ]
    var body: some View {
        TabView{
            ForEach(icons, id: \.self){ icon in
                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
                    .padding()
                
            }
        }
        .background(
            RadialGradient(gradient: Gradient(colors: [Color.red,Color.blue]), center: .center, startRadius:5, endRadius: 300)
        )
        .frame(height: 300)
        .tabViewStyle(PageTabViewStyle())
//        TabView (selection: $selectedTab){
//
//            HomeView(selectedTab: $selectedTab)
//                .tabItem{
//                    Image(systemName: "house.fill")
//                        Text("Home")
//                }
//                .tag(1)
//            Text("Browse Tab")
//                .tabItem{
//                    Image(systemName: "globe")
//                        Text("Browse")
//                }
//                .tag(2)
//            Text("Profile Tab")
//                .tabItem{
//                    Image(systemName: "person.fill")
//                        Text("Profile")
//                }.tag(3)
//        }
      
    }
}

struct TabViewAndPageTabViewBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        TabViewAndPageTabViewBootCamp()
    }
}

struct HomeView: View {
    @Binding var selectedTab:Int
    var body: some View {
        ZStack{
            Color.red
            VStack{
                Text("Home Tab")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                
                Button {
                    selectedTab = 3
                } label: {
                    Text("Go to profile")
                        .font(.headline)
                        .padding()
                        .padding(.horizontal)
                        .background(Color.white)
                        .cornerRadius(20)
                }
            }
        }
    }
}
