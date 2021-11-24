//
//  ButtonExample.swift
//  ViewsAndControls
//
//  Created by Russell Gordon on 2021-11-23.
//

import SwiftUI

struct ButtonExample: View {
    var body: some View {
        VStack(alignment: .leading) {
            
            Divider()
            
            Text("Button")
                .bold()
                .font(.title)
                .padding(.bottom, 3)
            
            Text("A control that performs an action when triggered.")
                .italic()
                .padding(.bottom, 10)

            // Example usage
            Button(action: {
                // NOTE: Output will not be shown unless this app is run in the "full" simulator
                print("Button was pressed")
            }, label: {
                Text("Press me")
            })
            .buttonStyle(.bordered)

        }
        .padding(.horizontal)
    }
}

struct ButtonExample_Previews: PreviewProvider {
    static var previews: some View {
        ButtonExample()
    }
}
