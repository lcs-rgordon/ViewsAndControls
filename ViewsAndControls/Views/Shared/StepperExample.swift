//
//  StepperExample.swift
//  ViewsAndControls
//
//  Created by Russell Gordon on 2021-11-23.
//

import SwiftUI

struct StepperExample: View {
    var body: some View {
        VStack(alignment: .leading) {
            
            Divider()
                .padding(.vertical, 20)

            Text("Stepper")
                .bold()
                .font(.title)
                .padding(.bottom, 3)
            
            Text("A control used to perform semantic increment and decrement actions.")
                .italic()
                .padding(.bottom, 10)

            // Example usage
            Stepper("Desired temperature",
                    value: .constant(21.0),
                    in: 5.0...30.0,
                    step: 0.5)
            
            HStack {
                Spacer()
                Text("21.0 °C")
                    .font(.largeTitle)
                Spacer()
            }


        }
        .padding(.horizontal)
    }
}

struct StepperExample_Previews: PreviewProvider {
    static var previews: some View {
        StepperExample()
    }
}
