//
//  pop-upSheetsAndFullScreenCoversBootCamp.swift
//  SwiftBootComp
//
//  Created by Yogesh on 15/06/23.
//

import SwiftUI

struct pop_upSheetsAndFullScreenCoversBootCamp: View {
    @State var showSheet:Bool = false
    var body: some View {
        ZStack{
            Color.green
                .edgesIgnoringSafeArea(.all)
            
            Button(action: {
                showSheet.toggle()
            }, label: {
                Text("Button")
                    .foregroundColor(.green)
                    .font(.headline)
                    .padding(20)
                    .background(Color.white.cornerRadius(10))
                
                
            })
//only used in one not possible to create one more don't add conditional logic here in sheet smae for fullscreenprissention and ca't use both in same view
            
            .fullScreenCover(isPresented: $showSheet,content: {
                secondScreen()
            })
//            .sheet(isPresented: $showSheet, content: {
//                secondScreen()
//            })
        }
    }
}

struct  secondScreen: View{
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View{
        ZStack(alignment: .topLeading){
            Color.red
                .edgesIgnoringSafeArea(.all)
            
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
            })
           
        }
    }
}

struct pop_upSheetsAndFullScreenCoversBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        pop_upSheetsAndFullScreenCoversBootCamp()
           //secondScreen()
    }
}
