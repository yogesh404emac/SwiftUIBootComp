//
//  ModelBootCamp.swift
//  SwiftBootComp
//
//  Created by Yogesh on 17/07/23.
//

import SwiftUI

struct userModel:Identifiable{
    let id:String = UUID().uuidString
    let  displayName:String
    let  userName:String
    let  followerAccount:Int
    let isVerified:Bool
}

struct ModelBootCamp: View {
    
    @State var users:[userModel] = [
//        "Janavi","Yogesh","JY","Shiv","Shakti"
        userModel(displayName: "Janavi", userName: "_yogesh", followerAccount: 100, isVerified: true),
        userModel(displayName: "Yogesh", userName: "yogijan", followerAccount: 100, isVerified: false),
        userModel(displayName: "Shiv", userName: "shivshakti", followerAccount: 100, isVerified: true),
        userModel(displayName: "Shakti", userName: "shaktishiv", followerAccount: 100, isVerified: true)
    ]
    
    var body: some View {
        NavigationView{
            List{
                
                ForEach(users){user in
                    HStack(spacing: 15.0){
                        Circle().frame(width: 35,height: 35)
                        VStack(alignment: .leading) {
                            Text(user.userName)
                                .font(.headline)
                            Text("@\(user.userName)")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                        Spacer()
                        if user.isVerified{
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(.blue)
                        }
                        
                        VStack{
                            Text("\(user.followerAccount)")
                                .font(.headline)
                                Text("Followers")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                    }
                    .padding(.vertical, 10)
                    
                }
  
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Contact")
        }
    }
}

struct ModelBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ModelBootCamp()
    }
}
