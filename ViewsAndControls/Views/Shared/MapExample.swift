//
//  MapExample.swift
//  ViewsAndControls
//
//  Created by Russell Gordon on 2021-11-23.
//

import MapKit
import SwiftUI

struct MapExample: View {
    var body: some View {
        VStack(alignment: .leading) {
            
            Divider()
                .padding(.vertical, 20)

            Text("Map")
                .bold()
                .font(.title)
                .padding(.bottom, 3)
            
            Text("A view that displays an embedded map interface.")
                .italic()
                .padding(.bottom, 10)

            // Example usage, with specified region
            Map(coordinateRegion: .constant(
                
                MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 37.334722,
                                                                  longitude: -122.008889),
                                   span: MKCoordinateSpan(latitudeDelta: 10,
                                                          longitudeDelta: 10))

            ))

        }
        .padding(.horizontal)
    }
}

struct MapExample_Previews: PreviewProvider {
    static var previews: some View {
        MapExample()
    }
}
