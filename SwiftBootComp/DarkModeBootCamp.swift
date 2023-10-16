//
//  DarkModeBootCamp.swift
//  SwiftBootComp
//
//  Created by Yogesh on 15/07/23.
//

import SwiftUI

struct DarkModeBootCamp: View {
    @Environment(\.colorScheme) var colorScheme
    
    
    var body: some View {
        NavigationView{
            ScrollView{
                VStack(spacing: 20){
                    Text("This color is PRIMARY")
                        .foregroundColor(.primary)
                    Text("This color is  SECONDARY")
                        .foregroundColor(.secondary)
                    Text("This color is Black")
                        .foregroundColor(.black)
                    Text("This color is White")
                        .foregroundColor(.white)
                    Text("This color is Red")
                        .foregroundColor(.red)
                    Text("This color is globally adaptive!")
                        .foregroundColor(Color("AdaptiveColor"))
                    Text("This color is locally  adaptive!")
                        .foregroundColor(colorScheme == .light ? .green: .yellow)
                    
                }
            }
            .navigationTitle("Dark mode BootCamp")
        }
    }
}

struct DarkModeBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            DarkModeBootCamp().preferredColorScheme(.light)
            
            DarkModeBootCamp().preferredColorScheme(.dark)
    }
                }
}
