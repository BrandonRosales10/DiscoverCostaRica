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
        
        NavigationView {
            VStack {
                VStack {
                    Text("Find directions to \(destination.shortName) with")
                        .font(.title)
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                }
                Divider()
                Button {
                    vm.openGoogleMaps(latitude: destination.latitude, longitude: destination.longitude)
                } label: {
                    Image("googlemaps")
                        .resizable()
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .padding(25)
                        
                }
                Divider()
                Button {
                    vm.openWazeApp(latitude: destination.latitude, longitude: destination.longitude)
                } label: {
                    Image("wazelogo")
                        .resizable()
                        .frame(height: 70)
                        .frame(maxWidth: .infinity)
                        .padding(25)
                        .tint(.white)
                }
            }
            .padding(50)
            
        }
        
        .overlay(backButton, alignment: .topLeading)
    }
}

struct DestinationDirectionsView_Previews: PreviewProvider {
    static var previews: some View {
        DestinationDirectionsView(destination: DestinationDataService.destinations.first!)
            .environmentObject(DestinationViewModel())
    }
}

extension DestinationDirectionsView {
    
    private var backButton: some View {
        Button {
            vm.sheetDestinationDirection = nil
        } label: {
            Image(systemName: "xmark")
                .font(.headline)
                .padding(16)
                .foregroundColor(.primary)
                .background(.thickMaterial)
                .cornerRadius(10)
                .shadow(radius: 4)
                .padding()
        }
    }
}
