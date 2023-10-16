//
//  onboardingView.swift
//  SwiftBootComp
//
//  Created by Yogesh on 19/07/23.
//

import SwiftUI


struct onboardingView: View {
    //MARK: VARIABLES
    //onboarding states:
    /*
     0 - welcome screen
     1 - Add name
     2 - Add age
     3 - Add gender
     
     */
    @State var onboardingState: Int = 0
    let transition :AnyTransition = .asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .leading))
    
    //onboarding inputs
    @State var name:String = ""
    @State var age:Double = 50
    @State var gender:String = ""
    
    //for the alert
    @State var alertTitle:String = ""
    @State var showAlert: Bool = false
    
    //app storage
    @AppStorage("name") var currentUserName:String?
    @AppStorage("age") var currentUserAge:Double?
    @AppStorage("gender") var currentUserGender:String?
    @AppStorage("singed_in") var currentUserSignedIn: Bool = false
    
    var body: some View {
        ZStack{
            
            //content
            ZStack{
                switch onboardingState {
                case 0:
                    welcomeSection
                        .transition(transition)
                case 1:
                    addNameSection
                        .transition(transition)
                case 2:
                    addAgeSection
                        .transition(transition)
                case 3:
                    addGenderSection
                        .transition(transition)
                default:
                    RoundedRectangle(cornerRadius: 25.0)
                        .foregroundColor(.green)
                    
                }
            }
            
            //buttons
            VStack{
                Spacer()
                bottomButton
                
            }
            .padding(30)
            
        }
        .alert(isPresented: $showAlert) {
            return Alert(title: Text(alertTitle))
        }
    }
    
    
}

struct onboardingView_Previews: PreviewProvider {
    static var previews: some View {
        onboardingView()
    }
}


// MARK: COMPONENTS
extension onboardingView {
    
    private var bottomButton:some View {
        Text(onboardingState == 0 ? "SIGN UP" :
                onboardingState == 3  ? " FINISH" :
                "NEXT")
        .font(.headline)
        .foregroundColor(.white)
        .frame(height: 55)
        .frame(maxWidth: .infinity)
        .background(Color.purple.opacity(0.9))
        .cornerRadius(10)
        .onTapGesture {
            handleNextButtonPressed()
        }
    }
    
    private var welcomeSection : some View {
        VStack(spacing: 40){
            Spacer()
            Image(systemName: "heart.text.square.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 200,height: 200)
                .foregroundColor(Color.white)
            Text("Find your match.")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .overlay(
                    Capsule(style: .continuous)
                        .frame(height: 3)
                        .offset(y:5)
                        .foregroundColor(.white)
                    , alignment:.bottom
                )
            Text("This is the App for finding your match online! to make a type   specimen book. It has survived not only five centuries")
                .fontWeight(.medium)
                .foregroundColor(.white)
            Spacer()
            Spacer()
        }
        .multilineTextAlignment(.center)
        .padding(30)
    }
    
    
    private var addNameSection:some View {
        VStack(spacing: 20){
            Spacer()
            
            Text("What's your Name?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            TextField("Your name here...", text: $name)
                .font(.headline)
                .frame(height: 55)
                .padding(.horizontal)
                .background(.white)
                .cornerRadius(10)
            
            
            Spacer()
            Spacer()
        }
        .padding(30)
    }
    private var addAgeSection:some View{
        VStack(spacing: 20){
            Spacer()
            
            Text("What's your age?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            
            Text("\(String(format: "%.0f", age))").font(.largeTitle).fontWeight(.semibold).foregroundColor(.white)
            Slider(value: $age, in: 18...100, step: 1)
                .accentColor(.white)
            
            
            
            Spacer()
            Spacer()
        }
        .padding(30)
    }
    
    private var addGenderSection: some View{
        VStack(spacing: 20){
            Spacer()
            
            Text("What's your gender?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            
            Picker(selection: $gender,
                   label: Text(gender.count > 1 ? gender : "Select the gender"  )
                .font(.headline)
                .foregroundColor(.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .cornerRadius(10)
                   ,
                   content: {
                Text("Select the gender").tag("").foregroundColor(.white)
                Text("Male").tag("Male").foregroundColor(.white)
                Text("Female").tag("Female").foregroundColor(.white)
                Text("Non-binary").tag("Non-binary").foregroundColor(.white)
            })
            .pickerStyle(.inline)
            
            
            
            Spacer()
            Spacer()
        }
        .padding(30)
    }
}

//MARK: FUNCTIONS

extension onboardingView{
    func handleNextButtonPressed(){
        
        //Check inputs
        switch onboardingState {
        case 1:
            guard name.count >= 3 else{
                showAlert(title: "Your name must be at list 3 characters long! 🧐")
                return
            }
            
        case 3:
            guard gender.count >= 1 else{
                showAlert(title: "Please select gender before moving forward! 🚻")
                return
            }
            
        default:
            break
        }
        //Go to next section
        
        if onboardingState == 3 {
            singIn()
            
        }else{
            withAnimation(.spring()){
                onboardingState += 1
            }
        }
        
    }
    func singIn() {
        currentUserName = name
        currentUserAge = age
        currentUserGender = gender
        withAnimation(.spring()){
            currentUserSignedIn = true
        }
        
    }
    func showAlert(title:String){
        alertTitle = title
        showAlert.toggle()
    }
}
