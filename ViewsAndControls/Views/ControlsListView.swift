//
//  ControlsListView.swift
//  ViewsAndControls
//
//  Created by Russell Gordon on 2021-11-23.
//

import SwiftUI

struct ControlsListView: View {
    var body: some View {
        ScrollView {
            
            // CITATION
            //
            // Descriptions of each control are from:
            //
            // https://goshdarnswiftui.com

            // TextField
            Group {
                
                Divider()
                
                Text("TextField")
                    .bold()
                    .padding(.bottom, 3)
                
                Text("A control that displays an editable text interface.")
                
                // Example usage
                TextField("This argument should the purpose of the text field within the context of your app, e.g.: 'Name' or 'Email Address'",
                          text: .constant(""),
                          prompt: Text("Type something..."))

            }
            .padding(.horizontal)
        }
        .padding()
    }
}

struct ControlsListView_Previews: PreviewProvider {
    static var previews: some View {
        ControlsListView()
    }
}
