//
//  StateBootCamp.swift
//  SwiftBootComp
//
//  Created by Yogesh on 14/06/23.
//

import SwiftUI

struct StateBootCamp: View {
   @State var backgroundColor:Color = Color.green
    @State var myTitle: String = "My title"
    @State var mycount: Int = 0
    
    var body: some View {
        ZStack{
            //background
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            //content
            VStack(spacing: 20){
                Text(myTitle)
                    .font(.title)
                Text("My count : \(mycount)")
                    .font(.headline)
                    .underline()
                
                HStack(spacing:20){
                    Button("Button 1"){
                        backgroundColor = .red
                        myTitle = "Button 1 was pressed"
                        mycount += 1
                    }
                    Button("Button 2"){
                        backgroundColor = .purple
                        myTitle = "Button 2 was pressed"
                        mycount -=  1
                    }
                }
            }
            .foregroundColor(.white)
            
        }
    }
}

struct StateBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        StateBootCamp()
    }
}
