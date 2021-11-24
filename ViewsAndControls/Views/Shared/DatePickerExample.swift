//
//  DatePickerExample.swift
//  ViewsAndControls
//
//  Created by Russell Gordon on 2021-11-23.
//

import SwiftUI

struct DatePickerExample: View {
    var body: some View {
        VStack(alignment: .leading) {
            
            Divider()
                .padding(.vertical, 20)

            Text("DatePicker")
                .bold()
                .font(.title)
                .padding(.bottom, 3)
            
            Text("A control for selecting an absolute date.")
                .italic()
                .padding(.bottom, 10)
            
            Text("Compact styles")
                .bold()
                .padding(.bottom, 10)
            
            // Example usage #1 - Date and Time
            DatePicker("Event start",
                       selection: .constant(Date()))
            
            // Example usage #2 - Date only
            DatePicker("Birthday",
                       selection: .constant(Date()),
                       displayedComponents: .date)

            // Example usage #3 - Time only
            DatePicker("Alarm time",
                       selection: .constant(Date()),
                       displayedComponents: .hourAndMinute)
            
            Group {
                
                Text("Wheel styles")
                    .bold()
                    .padding(.vertical, 10)

                // Example usage #4 - Date and Time, wheel style
                DatePicker("Event start",
                           selection: .constant(Date()))
                .datePickerStyle(.wheel)
                
                // Example usage #5 - Date only
                DatePicker("Birthday",
                           selection: .constant(Date()),
                           displayedComponents: .date)
                .datePickerStyle(.wheel)

                // Example usage #3 - Time only
                DatePicker("Alarm time",
                           selection: .constant(Date()),
                           displayedComponents: .hourAndMinute)
                .datePickerStyle(.wheel)

            }

        }
        .padding(.horizontal)
    }
}

struct DatePickerExample_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerExample()
    }
}
