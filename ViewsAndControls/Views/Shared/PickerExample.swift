//
//  PickerExample.swift
//  ViewsAndControls
//
//  Created by Russell Gordon on 2021-11-23.
//

import SwiftUI

struct PickerExample: View {
    var body: some View {
        VStack(alignment: .leading) {
            
            Divider()
                .padding(.vertical, 20)

            Text("Picker")
                .bold()
                .font(.title)
                .padding(.bottom, 3)
            
            Text("A control for selecting from a set of mutually exclusive values.")
                .italic()
                .padding(.bottom, 10)
            
            // Example usage #1 - Menu
            Picker(selection: .constant(""),
                   label: Text("Picker Name"),
                   content: {
                
                Text("Value 1").tag(0)
                Text("Value 2").tag(1)
                Text("Value 3").tag(2)
                Text("Value 4").tag(3)
                
            })
            .pickerStyle(MenuPickerStyle())

            // Example usage #2 - Wheel
            Picker(selection: .constant(""),
                   label: Text("Picker Name"),
                   content: {
                
                Text("Value 1").tag(0)
                Text("Value 2").tag(1)
                Text("Value 3").tag(2)
                Text("Value 4").tag(3)
                Text("Value 5").tag(4)
                Text("Value 6").tag(5)
                Text("Value 7").tag(6)
                Text("Value 8").tag(7)

            })
            .pickerStyle(WheelPickerStyle())
            .border(Color.black)
            .padding(.bottom, 5)

            // Example usage #3 - Segmented
            Picker(selection: .constant(2),
                   label: Text("Picker Name"),
                   content: {
                
                Text("Value 1").tag(0)
                Text("Value 2").tag(1)
                Text("Value 3").tag(2)
                Text("Value 4").tag(3)
                
            })
            .pickerStyle(SegmentedPickerStyle())
            
        }
        .padding(.horizontal)
    }
}

struct PickerExample_Previews: PreviewProvider {
    static var previews: some View {
        PickerExample()
    }
}
