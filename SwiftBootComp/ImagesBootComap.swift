//
//  ImagesBootComap.swift
//  SwiftBootComp
//
//  Created by Yogesh on 11/06/23.
//

import SwiftUI

struct ImagesBootComap: View {
    var body: some View {
        Image("shiv")
            .resizable()
                .aspectRatio(contentMode: .fill)
            .scaledToFit()
            .scaledToFill()
//            .frame(width: 300,height: 200)
//            .clipped()
//            .cornerRadius(150)
            .clipShape(
//                Circle()
                Ellipse()
            )
        Image("google")
            .renderingMode(.template)
            .resizable()
            .scaledToFit()
            .frame(width: 300,height: 200)
            .foregroundColor(.red)
    }
}

struct ImagesBootComap_Previews: PreviewProvider {
    static var previews: some View {
        ImagesBootComap()
    }
}
