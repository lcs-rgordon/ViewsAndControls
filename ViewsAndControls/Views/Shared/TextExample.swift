//
//  TextExample.swift
//  ViewsAndControls
//
//  Created by Russell Gordon on 2021-11-23.
//

import SwiftUI

struct TextExample: View {
    var body: some View {
        VStack(alignment: .leading) {
            
            Divider()
                .padding(.vertical, 20)

            Text("Text")
                .bold()
                .font(.title)
                .padding(.bottom, 3)
            
            Text("A view that displays one or more lines of read-only text.")
                .italic()
                .padding(.bottom, 3)
            
            // Example usage
            Text("This is some text")

        }
        .padding(.horizontal)
    }
}

struct TextExample_Previews: PreviewProvider {
    static var previews: some View {
        TextExample()
    }
}
