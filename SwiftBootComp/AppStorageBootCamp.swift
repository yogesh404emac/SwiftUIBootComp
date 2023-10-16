//
//  AppStorageBootCamp.swift
//  SwiftBootComp
//
//  Created by Yogesh on 19/07/23.
//

import SwiftUI

struct AppStorageBootCamp: View {
    
    @AppStorage("name") var currentUserName: String?
    var body: some View {
        VStack(spacing:20){
           
            Text(currentUserName ??  "Add name Here")
            if let name :String = currentUserName {
                Text(name)
            }
            
            Button("Save".uppercased()){
                let name  = "Yogesh"
             currentUserName = name
//                UserDefaults.standard.set(name,forKey:"name")
            }
        }
        .onAppear{
//            currentUserName = UserDefaults.standard.string(forKey: "name")
            
        }
    }
}

struct AppStorageBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageBootCamp()
    }
}
