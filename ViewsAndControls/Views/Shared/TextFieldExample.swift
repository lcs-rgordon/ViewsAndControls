//
//  TextFieldExample.swift
//  ViewsAndControls
//
//  Created by Russell Gordon on 2021-11-23.
//

import SwiftUI

struct TextFieldExample: View {
    var body: some View {
        VStack(alignment: .leading) {
            
            Divider()
            
            Text("TextField")
                .bold()
                .font(.title)
                .padding(.bottom, 3)
            
            Text("A control that displays an editable text interface.")
                .italic()
            
            // Example usage
            TextField("This argument should the describe the purpose of the text field within the context of your app, e.g.: 'Name' or 'Email Address'",
                      text: .constant(""),
                      prompt: Text("Type something..."))

        }
        .padding(.horizontal)
    }
}

struct TextFieldExample_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldExample()
    }
}
