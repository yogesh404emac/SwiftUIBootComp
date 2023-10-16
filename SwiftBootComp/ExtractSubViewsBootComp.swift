//
//  ExtractSubViewsBootComp.swift
//  SwiftBootComp
//
//  Created by Yogesh on 14/06/23.
//

import SwiftUI

struct ExtractSubViewsBootComp: View {
    var body: some View {
        ZStack{
            Color(#colorLiteral(red: 0.5759163026, green: 1, blue: 0.8804845909, alpha: 0.7637383078)).edgesIgnoringSafeArea(.all)
            conentLayer
            
        }
    }
    var conentLayer:some View {
        HStack {
            MyItem(title: "Apple", count: 1, color: .red)
            MyItem(title: "Oranges", count: 2, color: .orange)
            MyItem(title: "Bananas", count: 14, color: .yellow)
        }
    }
}
struct ExtractSubViewsBootComp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractSubViewsBootComp()
    }
}

struct MyItem: View {
    let title:String
    let count:Int
    let color:Color
    
    var body: some View {
        VStack{
            Text("\(count)")
            Text(title)
            
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}
