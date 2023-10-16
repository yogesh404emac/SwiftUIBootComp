//
//  BindingPropertWraperBootCamp.swift
//  SwiftBootComp
//
//  Created by Yogesh on 14/06/23.
//

import SwiftUI

struct BindingPropertWraperBootCamp: View {
    @State var BackgroundColor :Color = Color.green
    @State var title : String = "Title"
    var body: some View {
        ZStack{
            BackgroundColor.edgesIgnoringSafeArea(.all)

            VStack {
                Text(title)
                    .foregroundColor(.white)
                ButtonView(BackgroundColor:$BackgroundColor, title: $title)
            }
        }
    }
}

struct BindingPropertWraperBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        BindingPropertWraperBootCamp()
    }
}

struct ButtonView: View {
    @Binding var BackgroundColor:Color
    @State var buttonColor = Color.blue
    @Binding var title:String
    var body: some View {
        Button(action: {
            BackgroundColor = Color.orange
            buttonColor = Color.pink
            title = "NEW TITLE!!!"
        }, label:{
            Text("Button")
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(buttonColor)
                .cornerRadius(10)
            
            
        })
    }
}
