//
//  Destination.swift
//  DiscoverCostaRica
//
//  Created by Brandon Rosales on 12/30/22.
//

import Foundation
import MapKit

struct Destination: Identifiable, Equatable {

    let shortName: String
    let name: String
    let city: String
    let province: String
    let description: String
    let link: String
    let topography: String
    let price: String
    let textDirections: String
    let hoursOfOperation: String
    let activityType: [String]
    let imageNames: [String]
    let coordinates: CLLocationCoordinate2D

    
    var id: String {
        name + " " + province
    }
    
    var reverseSearch: String {
        province + " " + name
    }
    
    static func == (lhs: Destination, rhs: Destination) -> Bool {
        lhs.id == rhs.id
    }
    
}
