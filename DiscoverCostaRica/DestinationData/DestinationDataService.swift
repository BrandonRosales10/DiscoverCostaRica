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
    Destination(
                shortName: "Barra Honda",
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
    Destination(
                shortName: "Braulio Carrillo",
                name: "Braulio Carrillo National Park",
                city: "Guapiles",
                province: "Limon",
                description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
                link: "https://www.sinac.go.cr/EN-US/ac/accvc/bcnp/Pages/default.aspx",
                topography: "Forest",
                price: "¢ 1000 13+ national and resident visitors. ¢ 500 national and resident children (2 to 12 years old). $ 12 Non-resident over 13 years. $ 5 Non-residents children (2 to 12 years old). ¢ 500 domestic visitors and residents of primary and secondary education institutions, educational tours organized by schools that have been previously coordinated with the Administration of protected wilderness area. Students of higher education levels must cancel the fare for domestic or non-resident visitors, over 13 years. Children under 2 years of age, nationals and residents over 65 years do not pay the entrance fee. $ 2 Camping right (only in Barva Volcano Sector) ",
                textDirections: "Quebrada Gonzalez Sector: Leaving San José, take Route 32 and run  13.6 miles (22 km). The entrance is located next to the creek of the same name.",
                hoursOfOperation: "Daily from 8am to 3:30pm",
                activityType: ["Sightseeing", "Wildlife", "Trails"],
                imageNames: ["braulio1", "braulio2", "braulio3", "braulio4", "braulio5"],
                coordinates: CLLocationCoordinate2D(latitude: 10.147931, longitude: -83.944939)
    ),
    Destination(
               shortName: "Cahuita",
               name: "Cahuita National Park",
               city: "Cahuita",
               province: "Limon",
               description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
               link: "https://www.sinac.go.cr/EN-US/ac/aclac/pnc/Pages/default.aspx)",
               topography: "Beach",
               price: "If you enter by Playa Blanca entrance, adjacent to the town of Cahuita, the fee is a voluntary contribution, in cash. Which will be invested in the community of Cahuita National Park. If you enter by Puerto Vargas sector, non-resident foreigners pay $ 5.65 (IVA included) and children, domestic residents pay ¢ 1,130 (IVA included) and children residents ¢ 565 (IVA included)",
               textDirections: "From San Jose, take Route 32 to Limon, passing through the Zurquí tunnel. When arriving to Puerto Limon, before entering the city, at a gas station, turn right towards the community of Cahuita, reaching Playa Blanca area, leaving the community of Cahuita go south, about 5km you will find the entrance to Puerto Vargas sector.",
               hoursOfOperation: "Daily from 8am to 4pm",
               activityType: ["Sightseeing", "Trails"],
               imageNames: ["cahuita1", "cahuita2", "cahuita3", "cahuita4", "cahuita5", "cahuita6"],
               coordinates: CLLocationCoordinate2D(latitude: 9.714281, longitude: -82.821712)
    ),
    Destination(
               shortName: "Caño Negro",
               name: "Caño Negro Mixed National Wildlife Refuge",
               city: "Los Chiles",
               province: "Alajuela",
               description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
               link: "https://www.sinac.go.cr/EN-US/ac/ACAHN/rnvscn/Pages/default.aspx",
               topography: "Forest",
               price: "National Adult resident: ¢ 800. National Child and resident: ¢ 400. Adult non-resident: $ 10.Non-resident child: $ 1.",
               textDirections: "From San Jose, take the Interamerican Highway west to San Ramon. Then follow the road north through Los Angeles, La Tigra and Chachagua to La Fortuna then take Route 142, 17 km to Tilarán once it reaches the position of the Tourist Police deviates 2 km to the south.",
               hoursOfOperation: "Daily from 8am to 4pm",
               activityType: ["Wildlife", "Trails"],
               imageNames: ["cano1", "cano2", "cano3", "cano4", "cano5", "cano6"],
               coordinates: CLLocationCoordinate2D(latitude: 10.888895, longitude: -84.788857)
    ),
    Destination(
               shortName: "Carara",
               name: "Carara National Park",
               city: "Tarcoles",
               province: "Puntarenas",
               description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
               link: "https://www.sinac.go.cr/EN-US/ac/acopac/pnc/Pages/default.aspx",
               topography: "Forest",
               price: "National or residents Adults ¢1.000  6 a 12 years old children ¢500 They must present identification card when entering the park. Adults over 65 years do not pay entrance ticket by presenting identity card.Foreign Non-Residents Adults $10.Children $5",
               textDirections: "From San Jose, take Route 27 towards Caldera. After the last toll Pozón, exit at Tárcoles - Jacó (Route 34). Continue for about 14 km The Park is located 2 km from Tárcoles River bridge, road to Jacó.",
               hoursOfOperation: "From May to November, every day from 8am to 4pm. From December to April, daily from 7 am to 4 pm. ",
               activityType: ["Hiking"],
               imageNames: ["carara1", "carara2", "carara3", "carara4", "carara5"],
               coordinates: CLLocationCoordinate2D(latitude: 9.781044, longitude: -84.606234)
    ),
    
    ]
}
