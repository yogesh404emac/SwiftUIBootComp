//
//  ButtonBootCamp.swift
//  SwiftBootComp
//
//  Created by Yogesh on 14/06/23.
//

import SwiftUI

struct ButtonBootCamp: View {
    @State var title :String = "This is my title"
    
    var body: some View {
        
        VStack(spacing: 20) {
            Text(title)
            
            
            Button("Press me!")
            {
                self.title = "Button is pressed"
            }
            .accentColor(.red)
            Button(action: {
                self.title = "Button no # 2 was pressed."
            }, label: {Text("Save".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal,19)
                    .background(
                        Color.blue
                            .cornerRadius(10)
                            .shadow(radius: 10)
                    )
                
            })
            Button(action: {
                self.title = "Button # 3"
            }, label: {
                Circle()
                    .fill(Color.white)
                    .frame(width: 75,height: 75)
                    .shadow(radius: 10)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundColor(Color.red)
                    )
            })
            Button(action:
                    {
                
            }, label: {
                Text("Finish".uppercased())
                    .font(.caption)
                    .bold()
                    .foregroundColor(.gray)
                    .padding()
                    .padding(.horizontal,10)
                    .background(
                     Capsule()
                        .stroke(Color.gray,lineWidth: 2.0)
                    )
                
            })
        }
    }
}
struct ButtonBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonBootCamp()
    }
}
