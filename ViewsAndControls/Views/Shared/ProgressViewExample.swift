//
//  ProgressViewExample.swift
//  ViewsAndControls
//
//  Created by Russell Gordon on 2021-11-23.
//

import SwiftUI

struct ProgressViewExample: View {
    var body: some View {
        VStack(alignment: .leading) {
            
            Divider()
                .padding(.vertical, 20)

            Text("ProgressView")
                .bold()
                .font(.title)
                .padding(.bottom, 3)
            
            Text("A view that shows the progress towards completion of a task.")
                .italic()
                .padding(.bottom, 10)

            // Example usage - 50% complete
            ProgressView("Time to completion:",
                         value: 0.5)
                .padding(.bottom, 20)

            // Example usage #2 - 80% complete
            ProgressView("Time to completion:",
                         value: 0.8)
                .padding(.bottom, 20)

        }
        .padding(.horizontal)
    }
}

struct ProgressViewExample_Previews: PreviewProvider {
    static var previews: some View {
        ProgressViewExample()
    }
}
