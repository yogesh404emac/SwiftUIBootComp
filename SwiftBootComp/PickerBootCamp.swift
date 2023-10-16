//
//  PickerBootCamp.swift
//  SwiftBootComp
//
//  Created by Yogesh on 12/07/23.
//

import SwiftUI

struct PickerBootCamp: View {
    
    @State var selection:String = "1"
    let filterOptions:[String] = ["Most Recent","Most Popular","Most Liked"]
    
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.red
    }
    var body: some View {

        Picker(
            selection: $selection,
            label: Text("Picker"),
            content: {
                ForEach(filterOptions.indices){ index in
                    Text(filterOptions[index])
                        .tag(filterOptions[index])
                }
            })
        .pickerStyle(SegmentedPickerStyle())
//        .background(Color.red)
        
        
        
//        Picker(
//            selection: $selection,
//            label:
//                HStack {
//                    Text("Filter:")
//                    Text(selection)
//                }
//                .font(.headline)
//                .foregroundColor(.white)
//                .padding(.horizontal,10)
//                .background(Color.blue)
//                .cornerRadius(10)
//                .shadow(color: Color.blue.opacity(0.3), radius: 10, x: 0, y: 10)
//
//            ,
//            content: {
//                ForEach(filterOptions, id:\.self){ option in
//                    HStack{
//                        Text(option)
//                        Image(systemName: "heart.fill")
//
//                    }
//                    .tag(option)
//                }
//
//        })
//        .pickerStyle(.menu)

        
//                VStack{
//            HStack{
//                 Text("Age")
//                Text(selection)
//            }
//            Picker(
//                selection: $selection,
//                label: Text("Picker"),
//                content: {
//                    ForEach(18..<100){ number in
//                        Text("\(number)")
//                            .font(.headline)
//                            .foregroundColor(.red)
//                            .tag("\(number)")
//                    }
//                })
//            .pickerStyle(WheelPickerStyle())
//            //.background(Color.gray.opacity(0.3))
//        }
      
    }
}

struct PickerBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        PickerBootCamp()
    }
}
