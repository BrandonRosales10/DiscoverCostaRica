//
//  Destination.swift
//  DiscoverCostaRica
//
//  Created by Brandon Rosales on 12/30/22.
//

import Foundation
import MapKit

struct Destination: Identifiable, Equatable {

    let minName: String
    let name: String
    let city: String
    let province: String
    let description: String
    let link: String
    let topography: String
    let activityType: [String]
    let imageNames: [String]
    let coordinates: CLLocationCoordinate2D

    
    
    var id: String {
        name + " " + city
    }
    
    static func == (lhs: Destination, rhs: Destination) -> Bool {
        lhs.id == rhs.id
    }
    
}
