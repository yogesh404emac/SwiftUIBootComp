//
//  ContextMenuBootCamp.swift
//  SwiftBootComp
//
//  Created by Yogesh on 11/07/23.
//

import SwiftUI

struct ContextMenuBootCamp: View {
    @State var backgroundColor:Color = Color(.purple)
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0){
            Image(systemName: "house.fill")
                .font(.title)
            Text("swiftful thinking")
                .font(.headline)
            Text("How to use Context Menu")
                .font(.subheadline)
        }
        .foregroundColor(.white)
        .padding(30)
        .background(backgroundColor.cornerRadius(30))
        .contextMenu(menuItems: {
            Button(action:
                    {
                backgroundColor = .yellow
            }, label:{
               Label("Share post", systemImage: "flame.fill")
            }
            )
            Button(action:
                    {
                backgroundColor = .red
            }, label:{
               Label("Report post", systemImage: "")
            }
            )
            Button(action:
                    {
                backgroundColor = .green
            }, label:{
                HStack {
                    Text("Like post")
                    Image(systemName: "heart.fill")
                }
            }
            )
        })
    }
}

struct ContextMenuBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuBootCamp()
    }
}
