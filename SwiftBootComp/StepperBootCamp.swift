//
//  StepperBootCamp.swift
//  SwiftBootComp
//
//  Created by Yogesh on 12/07/23.
//

import SwiftUI

struct StepperBootCamp: View {
    @State var stepperValur: Int = 10
    @State var widthIncrement: CGFloat = 0
    var body: some View {
        
        VStack {
            Stepper("Steppe: \(stepperValur)", value: $stepperValur)
                .padding(30)
            
            RoundedRectangle(cornerRadius: 25)
                .frame(width: 100 + widthIncrement, height: 100)
            
            Stepper("Stepper 2")
            {
                incrementWidth(amount: 100)
                
            }onDecrement: {
                incrementWidth(amount: -100)

            }
        }
     
                
    }
    
    func incrementWidth(amount:CGFloat){
        withAnimation(.easeInOut){
            widthIncrement += amount
        }
       
    }
}

struct StepperBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        StepperBootCamp()
    }
}
