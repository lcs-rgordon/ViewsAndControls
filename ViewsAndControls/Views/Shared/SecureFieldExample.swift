//
//  SecureFieldExample.swift
//  ViewsAndControls
//
//  Created by Russell Gordon on 2021-11-23.
//

import SwiftUI

struct SecureFieldExample: View {
    var body: some View {
        VStack(alignment: .leading) {
            
            Divider()
                .padding(.vertical, 20)

            Text("SecureField")
                .bold()
                .font(.title)
                .padding(.bottom, 3)
            
            Text("A control into which the user securely enters private text.")
                .italic()
                .padding(.bottom, 10)

            // Example usage
            SecureField("This argument should the describe the purpose of the text field within the context of your app, e.g.: 'Password' or 'Security key'",
                        text: .constant(""),
                        prompt: Text("Type something..."))

        }
        .padding(.horizontal)
    }
}

struct SecureFieldExample_Previews: PreviewProvider {
    static var previews: some View {
        SecureFieldExample()
    }
}
