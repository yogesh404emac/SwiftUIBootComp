//
//  ResizableSheetBootCamp.swift
//  SwiftBootComp
//
//  Created by Yogesh on 27/07/23.
//

import SwiftUI

struct ResizableSheetBootCamp: View {
    
    @State private var showSheet:Bool = false
    @State private var detents: PresentationDetent = .large
    
    var body: some View {
        Button("Click me "){
            showSheet.toggle()
        }
        .sheet(isPresented: $showSheet) {
            MyNextView(detents: $detents)
            
//                .presentationDetents([.medium,.large], selection: $detents)
//                .presentationDragIndicator(.hidden)
//                .presentationDetents([.height(200)])
               // .presentationDetents([.fraction(0.10),.medium,.large])
               // .presentationDetents([.medium, .large])
                //.presentationDragIndicator(.hidden)
//                .interactiveDismissDisabled()
        }
//        .onAppear{
//            showSheet = true
//        }
    }
}
struct MyNextView: View {
    
    @Binding var detents: PresentationDetent
    
    var body: some View {
        ZStack{
            Color.red.opacity(0.5)
//            Text("Hello world..!")
        
            VStack (spacing: 20){
                Button("20 %"){
                    detents = .fraction(0.2)
                }
              
                Button("600 px"){
                    detents = .height(600)
                }
                
                Button("MEDIUM"){
                    detents = .medium
                }
                
                Button("Lager"){
                    detents = .large
                }
                
            }
        }
        .presentationDetents([.fraction(0.2),.medium,.large,.height(600)], selection: $detents)
        .presentationDragIndicator(.hidden)
        
    }
    
}

struct ResizableSheetBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ResizableSheetBootCamp()
    }
}
