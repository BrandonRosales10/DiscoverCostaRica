//
//  DestinationViewModel.swift
//  DiscoverCostaRica
//
//  Created by Brandon Rosales on 12/30/22.
//

import SwiftUI
import MapKit

class DestinationViewModel: ObservableObject {
    
    //All loaded destinations
    @Published var destinations: [Destination]
    
    //Current destination on the map
    @Published var mapDestination: Destination {
        didSet {
            
        }
    }
    
    //Current map on region
    @Published var mapRegion: MKCoordinateRegion = MKCoordinateRegion()
    
    //How zoomed in to the map you are
    let mapSpan = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
    
    //Show list of location
    @Published var showDestinationsList: Bool = false
    
    @Published var showFavoritesList: Bool = false
    
    @Published var sheetDestination: Destination? = nil
    
    init() {
        let destinations = DestinationDataService.destinations
        self.destinations = destinations
        self.mapDestination = destinations.first!
        
        self.updateMapRegion(destination: destinations.first!)
    }
    
    private func updateMapRegion(destination: Destination) {
        withAnimation(.easeInOut) {
            mapRegion = MKCoordinateRegion(center: destination.coordinates,
                                           span: mapSpan)
        }
    }
    
    func showNextDestination(destintion: Destination) {
        withAnimation(.easeInOut) {
            mapDestination = destintion
            showDestinationsList = false
            showFavoritesList = false
        }
    }
    
    func toggleDestinationsList() {
        withAnimation(.easeInOut) {
            showDestinationsList.toggle()
        }
    }
    
    func toggleFavoritesList() {
        withAnimation(.easeInOut) {
            showFavoritesList.toggle()
        }
    }
    
    
}

