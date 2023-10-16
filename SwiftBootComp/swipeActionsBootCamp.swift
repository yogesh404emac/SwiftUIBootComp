//
//  swipeActionsBootCamp.swift
//  SwiftBootComp
//
//  Created by Yogesh on 20/07/23.
//

import SwiftUI

struct swipeActionsBootCamp: View {
    
    @State var fruits: [String] = [
        "apple", "orange" , "banana", "peach"]
    
    var body: some View {
        List{
            ForEach(fruits , id:\.self){
                Text($0.capitalized)
                    .swipeActions(edge: .trailing, allowsFullSwipe: true) {
                        Button("Archive") {
                            
                        }.tint(.green)
                        Button("Save") {
                            
                        }.tint(.blue)
                        Button("Junk") {
                        }.tint(.black)
                    }
                
                    .swipeActions(edge: .leading, allowsFullSwipe: false) {
                        Button("Sahre") {
                            
                        }.tint(.yellow)
                    }
            }
            //.onDelete(perform: delete)
        }
    }
    
    func delete(indexSet:IndexSet){
        
    }
}

struct swipeActionsBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        swipeActionsBootCamp()
    }
}
