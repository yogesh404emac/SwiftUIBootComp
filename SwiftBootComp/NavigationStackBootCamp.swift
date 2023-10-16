//
//  NavigationStackBootCamp.swift
//  SwiftBootComp
//
//  Created by Yogesh on 26/07/23.
//

import SwiftUI

struct NavigationStackBootCamp: View {
    
    let fruits = ["Apple", "Orange","Banana" ]
    @State private var stackPath:[String] = []
    
    var body: some View {
        
        NavigationStack(path:$stackPath){
            ScrollView{
                VStack(spacing:40){
                    
                    Button("Super segue!"){
                        
                        stackPath.append(contentsOf:[
                            "Coconut","Watermelon","Mango"
                        ])
                    }
                    
                    ForEach(fruits,id: \.self){ fruit in
                        NavigationLink(value: fruit) {
                            Text(fruit)
                        }
                        
                    }
                    
                    ForEach(0..<10){ x in
                        NavigationLink(value: x) {
                            Text("Click \(x)")
                        }
                    }
                }
            }
            .navigationTitle("Nav Bar")
            .navigationDestination(for: Int.self) { value in
                                MySecondScreen(vale: value)
            }
            .navigationDestination(for: String.self) { value in
                               Text("ANTHER SCREEN : \(value)" )
                            }
                    }
            }
}
           
struct MySecondScreen: View{
    let vale : Int
    
    init(vale: Int) {
        self.vale = vale
        print("int screen \(vale)")
    }
    var body: some View{
        
        Text("Screen :  \(vale) ")
    }
}

struct NavigationStackBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStackBootCamp()
    }
}
