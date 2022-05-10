//
//  DatePickerExample.swift
//  ViewsAndControls
//
//  Created by Russell Gordon on 2021-11-23.
//

import SwiftUI

struct DatePickerExample: View {
    
    // MARK: Stored properties
    @State var selectedDateAndTime = Date()
    
    // MARK: Computed properties
    
    // Round up to the next hour
    // ADAPTED FROM: https://stackoverflow.com/a/42626860
    var dateAndTimeOfNextHour: Date {
        
        // Find current date and date components
        let now = Date()
        //2017-03-06 13:23:40 +0000
        let calendar = Calendar.current
        let hour = calendar.component(.hour, from: now)
        
        // Round up to next hour
        let newDate = calendar.date(bySettingHour: hour,
                                    minute: 0,
                                    second: 0,
                                    of: now)!
        return newDate
    }
    
    // Current date and type, nicely formatted
    var formattedDateAndTime: String {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .short
        formatter.doesRelativeDateFormatting = true
        
        return formatter.string(from: selectedDateAndTime)
    }
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                
                
                
                Divider()
                    .padding(.vertical, 20)
                
                Text("The selected date and time is:")
                    .bold()
                    .padding(.vertical)
                
                Text(formattedDateAndTime)
                
                // Larger, graphical
                DatePicker("",
                           selection: $selectedDateAndTime,
                           in: dateAndTimeOfNextHour...)
                .datePickerStyle(.graphical)
                
                Divider()
                    .padding(.vertical, 20)
                                
                // Compact
                DatePicker("",
                           selection: $selectedDateAndTime,
                           in: dateAndTimeOfNextHour...)
                .datePickerStyle(.compact)
                
            }
        }
        .padding(.horizontal)
        // Runs once when view loads
        .task {
            selectedDateAndTime = dateAndTimeOfNextHour
        }
    }
}

struct DatePickerExample_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerExample()
    }
}
