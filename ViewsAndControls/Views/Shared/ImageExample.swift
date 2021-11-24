//
//  ImageExample.swift
//  ViewsAndControls
//
//  Created by Russell Gordon on 2021-11-23.
//

import SwiftUI

struct ImageExample: View {
    var body: some View {
        VStack(alignment: .leading) {
            
            Divider()
            
            Text("Image")
                .bold()
                .font(.title)
                .padding(.bottom, 3)
            
            Text("A view that displays an environment-dependent image.")
                .italic()
                .padding(.bottom, 5)

            // Example usage, image from SF Symbols
            Image(systemName: "gear")
                .resizable()
                .frame(width: 200, height: 200)
                .scaledToFit()

            // Example usage, image from Assets folder
            // CITATION:
            //
            // Photo by Huston Wilson on Unsplash
            // https://unsplash.com/@hustwilson
            Image("huston-wilson")
                .resizable()
                .scaledToFit()

            
        }
        .padding(.horizontal)
    }
}

struct ImageExample_Previews: PreviewProvider {
    static var previews: some View {
        ImageExample()
    }
}
