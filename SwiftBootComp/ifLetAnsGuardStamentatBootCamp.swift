//
//  ifLetAnsGuardStamentatBootCamp.swift
//  SwiftBootComp
//
//  Created by Yogesh on 16/07/23.
//

import SwiftUI

struct ifLetAnsGuardStamentatBootCamp: View {
    
    @State var currentUserID:String? = nil
    @State var displayText: String? = nil
    @State var isLoading:Bool = false
    var body: some View {
        NavigationView{
            VStack{
                Text("Here we are practicing safe coding!")
                if let   text = displayText{
                    Text(text)
                        .font(.title)
                    
                    
                }
                
                
            //Do not use ! and do not use unwrap values
//                Text(displayText!)
//                    .font(.title)
                
                if isLoading{
                    ProgressView()
                }
                Spacer()
                
            }
            .navigationTitle("Safe coding")
            .onAppear{
                loadDate2()
            }
        }
    }
    func loadData(){
        if let userID = currentUserID{
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 3){
                displayText = "This is new data! user id is:\(userID)"
                isLoading = false
            }
        }else{
            displayText = "Error. There is no user id"
        }
    }
    func loadDate2() {
        
        guard let userID = currentUserID else{
            displayText = "Error. There is no user id! gurad"
            return
        }
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3){
            displayText = "This is new data! user id is:\(userID)"
            isLoading = false
        }
    }
}

struct ifLetAnsGuardStamentatBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ifLetAnsGuardStamentatBootCamp()
    }
}
