//
//  TextEditorExample.swift
//  ViewsAndControls
//
//  Created by Russell Gordon on 2021-11-23.
//

import SwiftUI

struct TextEditorExample: View {
    var body: some View {
        VStack(alignment: .leading) {
            
            Divider()
                .padding(.vertical, 20)

            Text("TextEditor")
                .bold()
                .font(.title)
                .padding(.bottom, 3)
            
            Text("A view that can display and edit long-form text.")
                .italic()
                .padding(.bottom, 10)

            // Example usage
            TextEditor(text: .constant("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."))
                .frame(minHeight: 300)

        }
        .padding(.horizontal)
    }
}

struct TextEditorExample_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorExample()
    }
}
