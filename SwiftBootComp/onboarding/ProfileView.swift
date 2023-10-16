//
//  ProfileView.swift
//  SwiftBootComp
//
//  Created by Yogesh on 20/07/23.
//

import SwiftUI

struct ProfileView: View {
    
    //app storage
    @AppStorage("name") var currentUserName:String?
    @AppStorage("age") var currentUserAge:Double?
    @AppStorage("gender") var currentUserGender:String?
    @AppStorage("singed_in") var currentUserSignedIn: Bool = false

    
    var body: some View {
        VStack (spacing: 20){
            Image(systemName: "person.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 150,height: 150)
            Text(currentUserName ?? "Your name here")
            Text("This user age is \(String(format: "%.0f", currentUserAge ?? 0)) year old!")
            Text("There gender is \(currentUserGender ?? "unknown")")
            
            
            Text("SIGN OUT")
                .font(.headline)
                .foregroundColor(.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.purple.opacity(0.9))
                .cornerRadius(10)
                .onTapGesture {
                    singOut()
                }
        }
                .font(.title)
                .foregroundColor(.purple)
                .padding()
                .padding(.vertical,40)
                .background(Color.white)
                .cornerRadius(10)
                .shadow(radius: 10)
        
            
    }
    func singOut(){
        currentUserName = nil
        currentUserAge = nil
        currentUserGender = nil
        
        withAnimation(.spring()){
            currentUserSignedIn = false
        }
        
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
