//
//  Destination.swift
//  DiscoverCostaRica
//
//  Created by Brandon Rosales on 12/30/22.
//

import Foundation
import MapKit

struct Destination: Identifiable, Equatable {

    var id: Int
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
    let latitude: CLLocationDegrees
    let longitude: CLLocationDegrees
    let coordinates: CLLocationCoordinate2D
    var isFavorite: Bool

    
    var searchBy: String {
        name + " " + province
    }
    
    var reverseSearch: String {
        province + " " + name
    }
    
    static func == (lhs: Destination, rhs: Destination) -> Bool {
        lhs.id == rhs.id
    }
    
}
