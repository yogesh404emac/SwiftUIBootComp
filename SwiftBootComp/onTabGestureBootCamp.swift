//
//  onTabGestureBootCamp.swift
//  SwiftBootComp
//
//  Created by Yogesh on 17/07/23.
//

import SwiftUI

struct onTabGestureBootCamp: View {
    
    @State var isSelected: Bool = false
    
    var body: some View {
        VStack(spacing:20){
            RoundedRectangle(cornerRadius: 25.0)
                .frame(height:200)
                .foregroundColor(isSelected ? Color.green : Color.red)
            
            Button(action: {
                isSelected.toggle()
            }, label: {
                Text("Button")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(.blue)
                    .cornerRadius(25)
            })
            
            
            Text("Tab Gesture")
                .font(.headline)
                .foregroundColor(.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(.blue)
                .cornerRadius(25)
//                .onTapGesture {
//                    isSelected.toggle()
//                }
                .onTapGesture(count: 2 , perform: {
                    isSelected.toggle()
                })
            
            Spacer()
        }
        .padding(40)
    }
}

struct onTabGestureBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        onTabGestureBootCamp()
    }
}
