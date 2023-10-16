//
//  IntroViewBootCamp.swift
//  SwiftBootComp
//
//  Created by Yogesh on 19/07/23.
//

import SwiftUI

struct IntroViewBootCamp: View {
    
    @AppStorage("singed_in") var currentUserSignedIn: Bool = false
    
    
    var body: some View {
        ZStack{
            //background
            RadialGradient(gradient:
                            Gradient(colors: [Color.blue,Color.red]),
                           center: .center,
                           startRadius: 5,
                           endRadius: UIScreen.main.bounds.height)
            .ignoresSafeArea(.all)
            
            if currentUserSignedIn {
                ProfileView()
                    .transition(.asymmetric(insertion: .move(edge: .bottom), removal: .move(edge: .top) ))
            }else{
                onboardingView()
                    .transition(.asymmetric(insertion: .move(edge: .top), removal:  .move(edge: .bottom)))
            }
            //if user is singed in
            //profile view
            //onboarding view
            
        }
    }
}

struct IntroViewBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        IntroViewBootCamp()
    }
}
