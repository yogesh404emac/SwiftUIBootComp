//
//  DocumentationBootCamp.swift
//  SwiftBootComp
//
//  Created by Yogesh on 15/07/23.
//

import SwiftUI

struct DocumentationBootCamp: View {
    
    //MARK: PROPERTIES
    
    @State var data:[String] = [
    "Apple","Oranges","Bananas"
    ]
    @State var showAlert : Bool = false
    
    //MARK: BODY
    
    //Yogesh : Working copy : - things are to do :
    /*
     1) fix title
     2)fix alert
     */
    var body: some View {
        NavigationView{
            ScrollView{
                Text("Hello")
                ForEach(data, id:\.self){ name in
                    Text(name)
                        .font(.headline)
                }
            }
            .navigationTitle("Documentation")
            .navigationBarItems(trailing:
                Button("Alert", action: {
                    showAlert.toggle()
                })
            )
            .alert(isPresented: $showAlert, content:    {
                getAlert(text: "This is the alert !")
            })
        }
    }
    
    //MARK: FUNCTIONS
    
    func getAlert(text:String) -> Alert {
        return Alert(title: Text(text))
    }
}

//MARK: PREVIEW
struct DocumentationBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        DocumentationBootCamp()
    }
}
