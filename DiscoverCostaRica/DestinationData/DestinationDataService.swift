//
//  DestinationDataService.swift
//  DiscoverCostaRica
//
//  Created by Brandon Rosales on 12/30/22.
//

import Foundation
import MapKit

class DestinationDataService {
    
    static let destinations: [Destination] = [
    Destination(
                minName:" Arenal Volcano",
                name: "Arenal Volcano National Park",
                city: "La Fortuna de San Carlos",
                province: "Alajuela",
                description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                link: "https://www.sinac.go.cr/EN-US/ac/ACAHN/pnva/Pages/default.aspx",
                topography: "Volcano",
                activityType: ["hiking", "sight seeing"],
                imageNames: ["arenal1", "arenal2", "arenal3", "arenal4", "arenal5"],
                coordinates: CLLocationCoordinate2D(latitude: 10.465743, longitude: -84.736345)
    ),
    Destination(
               minName:"Marino Ballena",
               name: "Marino Ballena National Park",
               city: "Uvita",
               province: "Puntarenas",
               description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
               link: "https://www.sinac.go.cr/EN-US/ac/acosa/pnmb/Pages/default.aspx",
               topography: "Beach",
               activityType: ["Beach", "Snorkeling", "Whale Watching"],
               imageNames: ["Marino1", "Marino2", "Marino3", "Marino4"],
               coordinates: CLLocationCoordinate2D(latitude: 9.152655, longitude: -83.756499)
    ),
    ]
}
