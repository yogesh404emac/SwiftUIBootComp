//
//  UsingSheetsTransitionsAndOffsetsBootCamp.swift
//  SwiftBootComp
//
//  Created by Yogesh on 16/06/23.
//

import SwiftUI

struct UsingSheetsTransitionsAndOffsetsBootCamp: View {
    @State var showNewScreen: Bool = false
    var body: some View {
        ZStack{
            Color.orange
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                Button("BUTTON"){
                    showNewScreen.toggle()
                }
                .font(.largeTitle)
                Spacer()
            }
            //Method 1 - SHEET
//            .sheet(isPresented: $showNewScreen, content:{
//                NewScreen()
//            })
            //Method -2 TRANSITION
//            ZStack{
//                if showNewScreen {
//                    NewScreen(showNewScree: $showNewScreen)
//                        .padding(.top,100)                   .transition(.move(edge: .bottom))
//                        .animation(.spring())
//                }
//            }
//            .zIndex(2.0)
            
            //METHOS - 3 ANIMATION OFFSET
            
            NewScreen(showNewScree: $showNewScreen)
            .padding(.top,100)
            .offset(y:showNewScreen ? 0 : UIScreen.main.bounds.height)
            .animation(.spring())
        }
    }
}

struct NewScreen:View {
    @Environment(\.presentationMode) var presentationMode
    @Binding var showNewScree:Bool
    
    var body: some View
    {
        ZStack(alignment: .topLeading){
            Color.purple
                .edgesIgnoringSafeArea(.all)
            
            Button(action:{
                //presentationMode.wrappedValue.dismiss()
                showNewScree.toggle()
            }, label:{
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(25)
                
            })
        }
    }
    
}
struct UsingSheetsTransitionsAndOffsetsBootCamp_Previews: PreviewProvider {
    static var previews: some View {
                UsingSheetsTransitionsAndOffsetsBootCamp()
    //NewScreen()
    }
}
