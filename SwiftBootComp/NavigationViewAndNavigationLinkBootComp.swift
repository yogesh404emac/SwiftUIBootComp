//
//  NavigationViewAndNavigationLinkBootComp.swift
//  SwiftBootComp
//
//  Created by Yogesh on 16/06/23.
//

import SwiftUI

struct NavigationViewAndNavigationLinkBootComp: View {
    var body: some View {
        //DO not use the second  navigationView in screen use navigation link in the navigationView 
        NavigationView{
            ScrollView{
                NavigationLink("Hello World", destination: MyOtherScreen())
                
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
            .navigationTitle("All Inboxes")
           // .navigationBarTitleDisplayMode(.automatic)
            //.navigationBarHidden(true)
            .navigationBarItems(
                leading:
                    HStack{
                        Image(systemName: "person.fill")
                        Image(systemName: "flame.fill")
                    }
                    ,
                                
                                
                                trailing:NavigationLink(destination: MyOtherScreen(), label: {Image(systemName: "gear")})
                .accentColor(.pink)
            )
        }
    }
}

struct MyOtherScreen:View{
    @Environment(\.presentationMode) var presentationMode
    var body: some View{
        ZStack{
            Color.red.edgesIgnoringSafeArea(.all)
                .navigationTitle("Red Screen..!")
                .navigationBarHidden(true)
               
            
            VStack {
                Button("Back")
                {
                    presentationMode.wrappedValue.dismiss()
                }
                
                
                NavigationLink("Click screen", destination: Text("3rd Screen..!"))
                    .foregroundColor(.white)
                    .frame(width:140, height: 50)
                    .background(Color.blue)
                    .padding()
            }
        }
    }
}

struct NavigationViewAndNavigationLinkBootComp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewAndNavigationLinkBootComp()
    }
}
