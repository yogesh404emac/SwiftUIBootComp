//
//  AlertBootCamp.swift
//  SwiftBootComp
//
//  Created by Yogesh on 17/06/23.
//

import SwiftUI

struct AlertBootCamp: View {
    @State var showAlert: Bool = false
    @State var alertType : MyAlert? = nil
//    @State var alertTitle: String = ""
//    @State var alertMessage:String = ""
    @State var backgroundColor : Color = Color.yellow
    
    enum    MyAlert{
        case Success
        case Error
    }
    
    var body: some View {
        ZStack {
            backgroundColor.edgesIgnoringSafeArea(.all)
            
            VStack{
                Button("Butoon 1")
                {
                    alertType = .Error
//                    alertTitle = "Error uploaded video"
//                    alertMessage = "This video could be uploaded"
                    showAlert.toggle()
                }
                Button("Button 2")
                {
                    alertType = .Success
//                    alertTitle = "Successfully uploaded video 😎"
//                    alertMessage = "Your video is public now "
                    showAlert.toggle()
                }
            }
            .alert(isPresented: $showAlert, content: {
    //          Alert(title: Text("There was an error !"))
    //            Alert(
    //                title: Text("This it title"),
    //                message: Text("here we will describe the error"),
    //                primaryButton: .destructive(Text("DELETE")),
    //                secondaryButton: .cancel())
                getAlert()
                
        })
        }
    }
    func getAlert() -> Alert {
        
        switch alertType {
        case .Error:
            return Alert(title:Text("There was an error !"),
                         dismissButton: .default(Text("Cancel"),
                                                 action: {
                backgroundColor = .red
            }))
        case .Success:
            return Alert(title:Text("There was a success !"),
             message:Text("This is success message"),
                         dismissButton: .default(Text("OK")
                                                ,
                                                 action: {
                backgroundColor = .green
            })
            )
        default:
            return Alert(title: Text("Error"))
            
        }
//        return Alert(
//            title: Text(alertTitle),
//            message: Text(alertMessage),
//            dismissButton: .default(Text("OK"))
//        )
        
//        Alert(
//            title: Text("This it title"),
//            message: Text("Here we will describe the error"),
//            primaryButton: .destructive(Text("DELETE"),action: {
//                backgroundColor = .red
//            }
//
//                                       ),
//            secondaryButton: .cancel())
    }
}

struct AlertBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        AlertBootCamp()
    }
}
