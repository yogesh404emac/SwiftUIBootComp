//
//  GroupBootCamp.swift
//  SwiftBootComp
//
//  Created by Yogesh on 27/07/23.
//

import SwiftUI

struct GroupBootCamp: View {
    var body: some View {
        VStack{
            
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            
            Group{
                Text("Hello, World!")
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
            .font(.caption)
            .foregroundColor(.green)
        }
        .foregroundColor(.red)
        .font(.headline)
    }
        
}

struct GroupBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        GroupBootCamp()
    }
}
