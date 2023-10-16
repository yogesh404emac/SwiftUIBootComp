//
//  DatePickerBootCamp.swift
//  SwiftBootComp
//
//  Created by Yogesh on 12/07/23.
//

import SwiftUI

struct DatePickerBootCamp: View {
    @State var selectedDate : Date = Date()
    let startingDate:Date = Calendar.current.date(from: DateComponents(year: 2018)) ?? Date()
    let endingDate:Date = Date()
    var dateFormatter:DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .short
        return formatter
    }
    
    var body: some View {
        VStack{
            Text("SELECTED DATE IS:")
            Text(dateFormatter.string(from:selectedDate))
                .font(.title)
            
            
            //        DatePicker("Select Date", selection: $selectedDate)
            //        DatePicker("Select Date",selection: $selectedDate,
            //                   displayedComponents: [.date,.hourAndMinute]
            //        )
            DatePicker("Select Date", selection: $selectedDate, in: startingDate...endingDate
                       ,displayedComponents: [.date])
            .accentColor(Color.red)
            .datePickerStyle(
                .compact
                //.graphical
                //.wheel
            )
        }
    }
}

struct DatePickerBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerBootCamp()
    }
}
