//
//  DiscoverCostaRicaApp.swift
//  DiscoverCostaRica
//
//  Created by Brandon Rosales on 12/30/22.
//

import SwiftUI

@main
struct DiscoverCostaRicaApp: App {
    
    @StateObject private var vm = DestinationViewModel()
    
    var body: some Scene {
        WindowGroup {
            MainDestinationView()
                .environmentObject(vm)
        }
    }
}
