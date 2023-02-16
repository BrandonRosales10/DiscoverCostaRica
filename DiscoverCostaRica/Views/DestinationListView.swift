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
                HStack {
                    Button {
                        vm.toggleFavoritesList()
                    } label: {
                        HStack {
                            Text("Favorites")
                            Image(systemName: "heart.fill")
                                .foregroundColor(.red)
                        }
                        
                    }
                    .buttonStyle(.borderedProminent)
                    .frame(maxWidth: .infinity)
                }

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
            .scrollDismissesKeyboard(.immediately)
        }
    }
    
    var filteredResults: [Destination] {
        
        if vm.showFavoritesList && searchText.isEmpty {
            return vm.destinations.filter { vm.savedItems.contains($0.id) }
            
        } else if !vm.showFavoritesList && !searchText.isEmpty {
            return vm.destinations.filter { $0.searchBy.localizedStandardContains(searchText) ||
                $0.topography.localizedStandardContains(searchText) ||
                $0.province.localizedStandardContains(searchText) ||
                $0.reverseSearch.localizedStandardContains(searchText)
            }
        } else if vm.showFavoritesList && !searchText.isEmpty {
            return vm.destinations.filter { vm.savedItems.contains($0.id) &&
               ($0.topography.localizedStandardContains(searchText) ||
                $0.province.localizedStandardContains(searchText) ||
                $0.reverseSearch.localizedStandardContains(searchText))
            }
        } else {
            return vm.destinations
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
                Image(systemName: vm.contains(destination) ? "heart.fill" : "heart")
                    .foregroundColor(.red)
                    .onTapGesture {
                        vm.toggleFavorites(item: destination)
                    }
            }
        }
    }
    
    
}
