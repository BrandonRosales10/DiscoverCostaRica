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
                vm.openAppleMaps(latitude: destination.latitude, longitude: destination.longitude)
            }
            .buttonStyle(.borderedProminent) // <- This style needs to be changed the 
        }
    }
}

struct DestinationDirectionsView_Previews: PreviewProvider {
    static var previews: some View {
        DestinationDirectionsView(destination: DestinationDataService.destinations.first!)
            .environmentObject(DestinationViewModel())
    }
}
