//
//  TextFieldBootCamp.swift
//  SwiftBootComp
//
//  Created by Yogesh on 12/07/23.
//

import SwiftUI

struct TextFieldBootCamp: View {
    @State var textFieldText : String = ""
    @State var dataArray: [String] = []
    var body: some View {
        NavigationView{
            VStack {
                TextField("Type something here", text: $textFieldText)
                    .padding()
                    .background(Color.gray.opacity(0.3).cornerRadius(20))
                    .foregroundColor(.red)
                    .font(.headline)
                
                //.textFieldStyle(RoundedBorderTextFieldStyle())
                
                Button(action: {
                    if textIsAppropriate(){
                        saveText()
                    }
                 
                }
                       , label: {Text("SAVE")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(textIsAppropriate() ? Color.blue.opacity(0.7) : Color.gray)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .font(.headline)
                    
                })
                .disabled(!textIsAppropriate())
                ForEach(dataArray , id: \.self){ data in
                    Text(data)
                }
                Spacer()
            }
            .padding()
            .navigationTitle("TextField BootCamp!")
        }
    }
    
    func textIsAppropriate() -> Bool {
        //check test
        if textFieldText.count >= 3 {
            return true
        }
        return false
    }
    
    func saveText(){
        dataArray.append(textFieldText)
        textFieldText = ""
    }
}

struct TextFieldBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldBootCamp()
    }
}
