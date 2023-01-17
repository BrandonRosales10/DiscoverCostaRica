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
                ForEach(filteredResults) { destination in
                    Button {
                        vm.showNextDestination(destintion: destination)
                    } label: {
                        listRowView(destination: destination)
                    }
                }
            }
            .listStyle(PlainListStyle())
            .navigationTitle("Destinations")
            .navigationBarTitleDisplayMode(.inline)
            .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always), prompt: "Search for a destination")
            
        }
    }
    
    var filteredResults: [Destination] {
        if searchText.isEmpty {
            return vm.destinations
        } else {
            return vm.destinations.filter { $0.id.localizedStandardContains(searchText) ||
                $0.topography.localizedStandardContains(searchText) ||
                $0.province.localizedStandardContains(searchText) ||
                $0.reverseSearch.localizedStandardContains(searchText)
                //Add more logic for the search
            }
        }
    }
}

struct DestinationListView_Previews: PreviewProvider {
    static var previews: some View {
        DestinationListView()
            .environmentObject(DestinationViewModel())
    }
}

extension DestinationListView {
    
    private func listRowView(destination: Destination) -> some View {
        HStack {
            if let imageName = destination.imageNames.first {
                Image(imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 50, height: 50)
                    .cornerRadius(10)
            }
            
            VStack(alignment: .leading) {
                Text(destination.shortName)
                    .font(.headline)
                Text(destination.province)
                    .font(.subheadline)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            HStack {
                Text(destination.topography)
                    .font(.subheadline)
            }
        }
    }
}
