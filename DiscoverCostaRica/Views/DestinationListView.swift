//
//  DestinationListView.swift
//  DiscoverCostaRica
//
//  Created by Brandon Rosales on 12/31/22.
//

import SwiftUI

struct DestinationListView: View {
    
    @EnvironmentObject private var vm: DestinationViewModel
    @State private var searchText = ""
    
    var body: some View {
        NavigationView {
            List {
                
            }
            
        }
    }
}

struct DestinationListView_Previews: PreviewProvider {
    static var previews: some View {
        DestinationListView()
    }
}
