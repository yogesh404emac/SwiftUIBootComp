//
//  onAppearAndonDisappearBootCamp.swift
//  SwiftBootComp
//
//  Created by Yogesh on 16/07/23.
//

import SwiftUI

struct onAppearAndonDisappearBootCamp: View {
    @State var myText:String = "Start tex."
    @State var count:Int = 0
    var body: some View {
        NavigationView{
            ScrollView{
                Text(myText)
                LazyVStack{
                    ForEach(0..<50){ _ in
                        RoundedRectangle(cornerRadius: 25)
                            .frame(height: 200)
                            .padding()
                            .onAppear{
                              count += 1
                            }
                    }
                }
            }
            .onAppear(perform:  {
                DispatchQueue.main.asyncAfter(deadline: .now() + 5, execute:{
                    myText = "this is new text.!"
                })
                
            })
            .onDisappear(perform:   {
                myText = "Ending text."
            })
            .navigationTitle("On Appear BootCamp \(count)")
        }
    }
}

struct onAppearAndonDisappearBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        onAppearAndonDisappearBootCamp()
    }
}



































