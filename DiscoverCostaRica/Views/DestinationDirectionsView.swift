//
//  DestinationDirectionsView.swift
//  DiscoverCostaRica
//
//  Created by Brandon Rosales on 1/25/23.
//

import SwiftUI
import MapKit

struct DestinationDirectionsView: View {
    
    @EnvironmentObject private var vm: DestinationViewModel
    
    let destination: Destination
    
    var body: some View {
        VStack {
            Button("Open with Google Maps") {
                vm.openGoogleMaps(latitude: destination.latitude, longitude: destination.longitude)
            }
            .buttonStyle(.borderedProminent) // <- This style needs to be changed
            
            Button("Open with Waze") {
                vm.openWazeApp(latitude: destination.latitude, longitude: destination.longitude)
            }
            .buttonStyle(.borderedProminent) // <- This style needs to be changed
        }
    }
}

struct DestinationDirectionsView_Previews: PreviewProvider {
    static var previews: some View {
        DestinationDirectionsView(destination: DestinationDataService.destinations.first!)
            .environmentObject(DestinationViewModel())
    }
}
