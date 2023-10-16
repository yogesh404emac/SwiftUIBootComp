//
//  ToolBarBootCamp.swift
//  SwiftBootComp
//
//  Created by Yogesh on 27/07/23.
//

import SwiftUI

struct ToolBarBootCamp: View {
    
    @State private var text:String = ""
    @State private var paths:[String] = []
    
    var body: some View {
        NavigationStack(path: $paths){
            ZStack{
                ScrollView{
                    TextField("Placeholder", text: $text)
                   
                    ForEach(0..<50){ _ in
                        Rectangle()
                            .fill(Color.blue.opacity(0.5))
                            .frame(width: 200,height: 200)
                        
                    }
                }
                
             
                
            }
            .navigationTitle("ToolBar")
//            .navigationBarItems(
//                leading: Image(systemName: "heart.fill"),
//                trailing: Image(systemName: "gear")
//            )
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading){
                    Image(systemName: "heart.fill")
                }
                
                ToolbarItem(placement: .automatic){
                    HStack{
                        Image(systemName: "gear")
                    }
//                        .background(Color.red)
//                        .frame(maxWidth: .infinity,alignment: .leading)
                }
            }
           // .toolbar(.hidden, for: .navigationBar)
//            .toolbarBackground(.hidden, for: ToolbarPlacement.navigationBar)
            .toolbarColorScheme(.dark ,for: ToolbarPlacement.navigationBar)
            .navigationBarTitleDisplayMode(.inline)
            .toolbarTitleMenu {
                Button("Screen 1"){
                    paths.append("Screen 1")
                }
                Button("Screen 2"){
                    paths.append("Screen 2")
                }
            }
            .navigationDestination(for: String.self) { value in
                Text("Screen \(value)")
            }
        }
    }
}

struct ToolBarBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ToolBarBootCamp()
    }
}
