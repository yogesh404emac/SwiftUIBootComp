//
//  BackgroundMaterialsBootCamp.swift
//  SwiftBootComp
//
//  Created by Yogesh on 20/07/23.
//

import SwiftUI

struct BackgroundMaterialsBootCamp: View {
    var body: some View {
        VStack{
            Spacer()
            VStack{
                RoundedRectangle(cornerRadius: 4)
                    .frame(width: 50,height: 4)
                    .padding()
                Spacer()
            }
            .frame(height: 350)
            .frame(maxWidth:.infinity)
            .cornerRadius(20)
            .background(.ultraThinMaterial)
        }
        .ignoresSafeArea()
        .background(
            Image("shiv")
        )
    }
}

struct BackgroundMaterialsBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundMaterialsBootCamp()
    }
}
