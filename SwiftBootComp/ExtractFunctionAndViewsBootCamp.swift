//
//  ExtractFunctionAndViewsBootCamp.swift
//  SwiftBootComp
//
//  Created by Yogesh on 14/06/23.
//

import SwiftUI

struct ExtractFunctionAndViewsBootCamp: View {
    @State var backgroundColor:Color = Color.pink
    
    var body: some View {
        ZStack{
            //background
            backgroundColor.edgesIgnoringSafeArea(.all)
            
            //content
            contentLayer
            
        }
    }
    
    var contentLayer:some View{
        VStack{
            Text("Titile")
                .font(.largeTitle)
            
            Button(action: {
                
               buttonPressed()
                
            }, label: {
                Text("Press Me..!")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
                   })
        
        }
    }
    func buttonPressed(){
        backgroundColor = .yellow
    }
}

struct ExtractFunctionAndViewsBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractFunctionAndViewsBootCamp()
    }
}
