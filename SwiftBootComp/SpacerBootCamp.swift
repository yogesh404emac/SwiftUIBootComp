//
//  SpacerBootCamp.swift
//  SwiftBootComp
//
//  Created by Yogesh on 12/06/23.
//

import SwiftUI

struct SpacerBootCamp: View {
    var body: some View {
        //        HStack(spacing:0){
        //            Spacer(minLength: 0)
        //                .frame(height: 10)
        //                .background(Color.orange)
        //            Rectangle()
        //                .frame(width: 50, height: 50)
        //            Spacer()
        //                .frame(height: 10)
        //                .background(Color.orange)
        //            Rectangle()
        //                .fill(Color.red)
        //                .frame(width: 50, height: 50)
        //            Spacer()
        //                .frame(height: 10)
        //                .background(Color.orange)
        //
        //            Rectangle()
        //                .fill(Color.green)
        //                .frame(width: 50, height: 50)
        //            Spacer()
        //                .frame(height: 10)
        //                .background(Color.orange)
        //
        //        }
        //        .background(Color.yellow)
        //        //.padding(.horizontal,200)
        //        .background(Color.blue)
        
    
        VStack {
            HStack{
                Image(systemName: "xmark")
                   
                Spacer()
                    .frame(height: 10)
                    .background(Color.orange)
                
                Image(systemName: "gear")
            }
            .font(.title)
            .padding(.horizontal)
        //.background(Color.yellow)
            
            Spacer()
                .frame(width: 10)
                .background(Color.orange)
            
            Rectangle()
                .frame(height: 55)
        }
        
    }
}

struct SpacerBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        SpacerBootCamp()
    }
}
