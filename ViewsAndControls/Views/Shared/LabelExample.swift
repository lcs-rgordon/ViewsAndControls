//
//  LabelExample.swift
//  ViewsAndControls
//
//  Created by Russell Gordon on 2021-11-23.
//

import SwiftUI

struct LabelExample: View {
    var body: some View {
        VStack(alignment: .leading) {
            
            Divider()
                .padding(.vertical, 20)

            Text("Label")
                .bold()
                .font(.title)
                .padding(.bottom, 3)
            
            Text("""
Label is a convenient view that presents an image and text alongside each other.

This is suitable for a menu item or a row in a list of settings.
                 
You can use your own image or one from SF Symbols.
""")
                .italic()
                .padding(.bottom, 10)
            
            // Example usage
            Label(title: {
                Text("Settings")
            }, icon: {
                Image(systemName: "gear")
            })

        }
        .padding(.horizontal)
    }
}

struct LabelExample_Previews: PreviewProvider {
    static var previews: some View {
        LabelExample()
    }
}
