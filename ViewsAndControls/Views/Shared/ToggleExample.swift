//
//  ToggleExample.swift
//  ViewsAndControls
//
//  Created by Russell Gordon on 2021-11-23.
//

import SwiftUI

struct ToggleExample: View {
    var body: some View {
        VStack(alignment: .leading) {
            
            Divider()
                .padding(.vertical, 20)

            Text("Toggle")
                .bold()
                .font(.title)
                .padding(.bottom, 3)
            
            Text("A control that toggles between on and off states.")
                .italic()
                .padding(.bottom, 10)

            // Example usage, when toggle is on
            Toggle("Sound effects", isOn: .constant(true))

            // Example usage, when toggle is off
            Toggle("Background music", isOn: .constant(false))

        }
        .padding(.horizontal)
    }
}

struct ToggleExample_Previews: PreviewProvider {
    static var previews: some View {
        ToggleExample()
    }
}
