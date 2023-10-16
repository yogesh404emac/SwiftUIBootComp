//
//  TernaryOperatorsBootCamp.swift
//  SwiftBootComp
//
//  Created by Yogesh on 15/06/23.
//

import SwiftUI

struct TernaryOperatorsBootCamp: View {
    @State var isStringState: Bool = false
    var body: some View {
        VStack{
            Button("Button")
            {
                isStringState.toggle()
            }
            
            Text(isStringState ? "Hello Janvi": "Hey Yogesh ")
            RoundedRectangle(cornerRadius: isStringState ? 25 : 0)
                .fill(isStringState ? Color.red :Color.blue)
                .frame(
                    width:  isStringState ? 300 : 50,
                    height: isStringState ? 100 : 50)
            
            Spacer()
        }
    }
}

struct TernaryOperatorsBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        TernaryOperatorsBootCamp()
    }
}
