//
//  LazyVGridLazyHGridBootCamp.swift
//  SwiftBootComp
//
//  Created by Yogesh on 13/06/23.
//

import SwiftUI

struct LazyVGridLazyHGridBootCamp: View {
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
        
        
        
    ]
    var body: some View {
        ScrollView{
                        Rectangle()
                            .fill(Color.orange)
                            .frame(height: 400)
            
            LazyVGrid(
                columns: columns,
                alignment: .center,
                spacing: 6,
                pinnedViews: [.sectionHeaders],//pin the section on screen
                content: {
                    Section(header:
                                Text("Section 1")
                        .foregroundColor(.white)
                        .font(.title)
                        .frame(maxWidth: .infinity,alignment: .leading)                        .background(Color.blue)
                        .padding()
                    )
                    {
                        ForEach(0..<50){ index in
                            Rectangle()
                                .frame(height:150)
                        }
                        
                    }
                    
                    Section(header:
                                Text("Section 2")
                        .foregroundColor(.white)
                        .font(.title)
                        .frame(maxWidth: .infinity,alignment: .leading)                        .background(Color.red)
                        .padding()
                    )
                    {
                        ForEach(0..<50){ index in
                            Rectangle()
                                .fill(Color.green)
                                .frame(height:150)
                        }
                        
                    }
                    
                })
            
        }
    }
}

struct LazyVGridLazyHGridBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        LazyVGridLazyHGridBootCamp()
    }
}
