//
//  FrameBootCamp.swift
//  SwiftBootComp
//
//  Created by Yogesh on 11/06/23.
//

import SwiftUI

struct FrameBootCamp: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(Color.green)
            .frame(width: 300,height: 300,alignment: .leading)
            .frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .top)
                    .background(Color.red)
            .background(Color.red)
            .frame(height: 100)
            .background(Color.orange)
            .frame(width: 150)
            .background(Color.purple)
            .frame(maxWidth: .infinity)
            .background(Color.pink)
            .frame(height: 400)
            .background(Color.green)
            .frame(maxHeight: .infinity)
            .background(Color.yellow)
    }
}

struct FrameBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        FrameBootCamp()
    }
}
