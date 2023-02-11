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
            updateMapRegion(destination: mapDestination)
        }
    }
    
    
    
    //Current map on region
    @Published var mapRegion: MKCoordinateRegion = MKCoordinateRegion()
    
    //How zoomed in to the map you are
    let mapSpan = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
    
    //Show list of location
    @Published var showDestinationsList: Bool = false
    
    @Published var showFavoritesList: Bool = false
    
    @Published var savedItems: Set<Int> = [0, 0]
    
    @Published var sheetDestination: Destination? = nil
    
    @Published var sheetDestinationDirection: Destination? = nil
    
    var filteredDesintations: [Destination] {
        
        if showFavoritesList {
            return destinations.filter { savedItems.contains($0.id)}
        } else {
            return destinations
        }
    }
    
    private var db = Database()
    
    init() {
        let destinations = DestinationDataService.destinations
        self.destinations = destinations
        self.mapDestination = destinations.first!
        
        self.updateMapRegion(destination: destinations.first!)
        
        self.savedItems = db.load()
        
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
    
    func contains(_ item: Destination) -> Bool {
        savedItems.contains(item.id)
    }
    
    func toggleFavorites(item: Destination) {
        if contains(item) {
            savedItems.remove(item.id)
        } else {
            savedItems.insert(item.id)
        }
        db.save(items: savedItems)
    }
    
    func openGoogleMaps(latitude: CLLocationDegrees, longitude: CLLocationDegrees) {
        
        let url = URL(string: "comgooglemaps://?saddr=&daddr=\(latitude),\(longitude)&directionsmode=driving")
        
        if UIApplication.shared.canOpenURL(url!) {
            UIApplication.shared.open(url!, options: [:], completionHandler: nil)
        } else {
            
            let urlBrowser = URL(string: "https://www.google.co.in/maps/dir/??saddr=&daddr=\(latitude),\(longitude)&directionsmode=driving")
                             
            UIApplication.shared.open(urlBrowser!, options: [:], completionHandler: nil)
        }
        
    }
    
    func openWazeApp(latitude: CLLocationDegrees, longitude: CLLocationDegrees) {
        
        let url = URL(string: "waze://ul?ll=\(latitude),\(longitude)&navigate=yes")
        
        if UIApplication.shared.canOpenURL(url!) {
            UIApplication.shared.open(url!, options: [:], completionHandler: nil)
        } else {
            let appUrl = URL(string: "https://waze.com/ul?ll=\(latitude),\(longitude)&navigate=yes")
            UIApplication.shared.open(appUrl!, options: [:], completionHandler: nil)
        }
    }
    
    
}

