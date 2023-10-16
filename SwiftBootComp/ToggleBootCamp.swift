//
//  ToggleBootCamp.swift
//  SwiftBootComp
//
//  Created by Yogesh on 12/07/23.
//

import SwiftUI

struct ToggleBootCamp: View {
    @State var toggleIsOn:Bool  = false
    
    var body: some View {
        
        VStack {
            HStack{
                Text("Status:")
                Text(toggleIsOn ? "Online" : "Offline")
            }
            .font(.title)
            Toggle(
                isOn: $toggleIsOn,
                label: {
                    Text("Lable")
                })
            .toggleStyle(SwitchToggleStyle(tint: Color.green.opacity(0.7)))
            Spacer()
            
        }
        .padding(.horizontal,100)
        
    }
}

struct ToggleBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ToggleBootCamp()
    }
}
