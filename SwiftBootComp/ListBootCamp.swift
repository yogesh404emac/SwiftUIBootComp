//
//  ListBootCamp.swift
//  SwiftBootComp
//
//  Created by Yogesh on 17/06/23.
//

import SwiftUI

struct ListBootCamp: View {
    @State var fruits: [String] = [
        "apple", "orange" , "banana", "peach"]
    @State var veggies: [String] = [
        "tomato", "patato", "corrot"
    ]
    
    var body: some View {
        NavigationView {
            List {
                Section(
                    header:
                        HStack {
                            Text("Fruits")
                            Image(systemName: "flame.fill")
                        }
                        .font(.headline)
                        .foregroundColor(.orange)
                )
                {
                    ForEach( fruits , id:\.self) { fruit in
                        Text(fruit.capitalized)
                            .font(.caption)
                            .foregroundColor(.white)
//                            .frame(maxWidth: .infinity, maxHeight: .infinity)
//                            .background(Color.gray)
                            
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                    .listRowBackground(Color.blue)
                }
                
                Section(header: Text("Veggies")) {
                    ForEach(veggies, id:\.self){ veggies in
                        Text(veggies.capitalized)
                        
                    }
                }
                
            }
            .accentColor(.purple)
            //.listStyle(InsetGroupedListStyle())
            .navigationTitle("Grocery List")
            .navigationBarItems(leading: EditButton(),
                                trailing: addButton
            )
            
        }
        .accentColor(.red)
    }
    
    var addButton:some View{
        Button("Add", action: {
fruits.append("Cocount")
})
    }
    func delete(indexSet: IndexSet){
        fruits.remove(atOffsets:indexSet)
    }
    func move(indices:IndexSet,newOffset:Int){
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    
}

struct ListBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ListBootCamp()
    }
}
