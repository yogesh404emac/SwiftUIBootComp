//
//  TextEditorBootCamp.swift
//  SwiftBootComp
//
//  Created by Yogesh on 12/07/23.
//

import SwiftUI

struct TextEditorBootCamp: View {
    
    @State var textEditorText:String = "This is starrting canves"
    @State var savedText:String = ""
    
    var body: some View {
        NavigationView{
            VStack{
                TextEditor(text: $textEditorText)
                    .frame(height: 250)
                    .foregroundColor(.red)
                    .colorMultiply(.gray.opacity(0.5))
                    .cornerRadius(20)
                
                Button(action: {
                    savedText = textEditorText
                }, label: {
                    Text("SAVE")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue.opacity(0.7))
                        .cornerRadius(10)
                        
                })
                
                Text(savedText)
                Spacer()
            }
            .padding()
            .background(Color.green.opacity(0.6))
            .navigationTitle("TextEditor Bootcamp!")
        }
        
    }
}

struct TextEditorBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorBootCamp()
    }
}
