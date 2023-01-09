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
                shortName:"Arenal Volcano",
                name: "Arenal Volcano National Park",
                city: "La Fortuna de San Carlos",
                province: "Alajuela",
                description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                link: "https://www.sinac.go.cr/EN-US/ac/ACAHN/pnva/Pages/default.aspx",
                topography: "Volcano",
                price: "National Adult, resident: ¢ 1,000. National Child and resident: ¢ 500. Adult non-resident: US$ 15. Nonresident child US$ 5.",
                textDirections: " Directions From San Jose, take the Inter-American highway to Ciudad Quesada, San Carlos and from Los Chiles, near the border with Nicaragua. About 4 miles (7 km) before coming to Los Chiles, to detour east on a distance of 19 km",
                hoursOfOperation: "Daily from 8am to 4pm",
                activityType: ["hiking", "sight seeing"],
                imageNames: ["arenal1", "arenal2", "arenal3", "arenal4", "arenal5"],
                coordinates: CLLocationCoordinate2D(latitude: 10.465743, longitude: -84.736345)
    ),
    Destination(
               shortName:"Marino Ballena",
               name: "Marino Ballena National Park",
               city: "Uvita",
               province: "Puntarenas",
               description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
               link: "https://www.sinac.go.cr/EN-US/ac/acosa/pnmb/Pages/default.aspx",
               topography: "Beach",
               price: "National and residents: ¢1.000. Foreign Non-residents: $6. Children under 11 years of age and elderly people do not pay",
               textDirections: "From San José to José María Castro Madriz 27 Caldera Highway deviates in Costanera Sur road, Route 34 Pacífica Fernández Oreamuno or Interamerican Highway that goes to Paso Canoas, about an hour after the entrance of Quepos and on the road take the turnoff according to the site to visit.",
               hoursOfOperation: "Daily from 7 am to 4 pm",
               activityType: ["Beach", "Snorkeling", "Whale Watching"],
               imageNames: ["marino1", "marino2", "marino3", "marino4"],
               coordinates: CLLocationCoordinate2D(latitude: 9.152655, longitude: -83.756499)
    ),
    Destination(
                shortName: "Barbilla National Park",
                name: "Barbilla National Park",
                city: "Turrialba",
                province: "Cartago",
                description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
                link: "https://www.visitcostarica.com/en/costa-rica/where-to-go/protected-areas/barbilla-national-park",
                topography: "Mountain",
                price: "Any Visitor ¢1.000. Cabecar guide ¢10.000",
                textDirections: "From San José, take Route 32 to Limón, through the Zurquí tunnel and the mountains of the Braulio Carrillo National Park. Take the turnoff to Siquirres. The entrance is 3 km from the city of Siquirres. After leaving the highway continue on a gravel road for 17 km to Brisas de Pacuarito.",
                hoursOfOperation: "Daily from 8am to 4pm",
                activityType: ["Rivers", "Waterfall"],
                imageNames: ["barbilla1", "barbilla2", "barbilla3", "barbilla4"],
                coordinates: CLLocationCoordinate2D(latitude: 9.972638, longitude: -83.459470)
    ),
    Destination(shortName: "Barra Honda",
                name: "Barra Honda National Park",
                city: "Santa Ana",
                province: "Guanacaste",
                description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
                link: "https://www.sinac.go.cr/EN-US/ac/act/bhnp/Pages/default.aspx",
                topography: "Mountain",
                price: "National, ¢ 1000 per person/day. Foreigners: $12 per person.  The caving tour costs around $30 pp and includes admission fee for the national park, caving equipment and a professional guide.",
                textDirections: "From San José, drive north toward Guanacaste to the Limonal junction. Turn left at the Tres Hermanas Restaurant, continue to the La Amistad Bridge and then toward Nicoya. After crossing the bridge, continue about 12 km towards Nicoya, then turn right towards the towns of Barra Honda and Nacaome, following the signs to the park entrance.",
                hoursOfOperation: "Daily from 8am to 4pm",
                activityType: ["hiking", "Caverns"],
                imageNames: ["barra1", "barra2","barra3", "barra4", "barra5"],
                coordinates: CLLocationCoordinate2D(latitude: 10.175926, longitude: -85.371158)
    ),
    
    ]
}
