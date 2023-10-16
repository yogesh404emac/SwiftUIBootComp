//
//  FocusStateBootCamp.swift
//  SwiftBootComp
//
//  Created by Yogesh on 21/07/23.
//

import SwiftUI

struct FocusStateBootCamp: View {
    
    enum OnboardingFields {
        case username
        case password
        
    }
    
//    @FocusState private var usernameInFocus:Bool
//    @FocusState private var passwordInFocus:Bool
    @FocusState private var filedInFocus: OnboardingFields?
    @State private var username:String = ""
    @State private var password:String = ""
    var body: some View {
        VStack{
            TextField("Add your name here...", text:$username)
                .focused($filedInFocus, equals: .username)
            //.focused($usernameInFocus)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
            
            
            SecureField("Add your password here...", text:$password)
                .focused($filedInFocus, equals: .password)
            //.focused($passwordInFocus)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
            
            Button("SING UP 🚀")
            {
                let usernameIsValid = !username.isEmpty
                let passwordIsValid = !password.isEmpty
                if usernameIsValid && passwordIsValid {
                    print("SING UP ")
                }else if usernameIsValid {
                    filedInFocus = .password
//                    usernameInFocus = false
//                    passwordInFocus = true
                }
                else{
                    filedInFocus = .username
//                    usernameInFocus = true
//                    passwordInFocus = false
                }
            }
//            Button("Toggle focus state")
//            {
//                usernameInFocus.toggle()
//            }
        }
        .padding(40)
//        .onAppear{
//            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5, execute:{
//                self.usernameInFocus = true
//            } )
//        }
    }
}

struct FocusStateBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        FocusStateBootCamp()
    }
}
