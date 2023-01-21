//
//  DestinationDetailView.swift
//  DiscoverCostaRica
//
//  Created by Brandon Rosales on 12/31/22.
//

import SwiftUI

struct DestinationDetailView: View {
    
    @EnvironmentObject private var vm: DestinationViewModel
    
    let destination: Destination
    
    var body: some View {
        ScrollView {
            VStack {
                imageSection
            }
        }
    }
}

struct DestinationDetailView_Previews: PreviewProvider {
    static var previews: some View {
        DestinationDetailView(destination: DestinationDataService.destinations.first!)
            .environmentObject(DestinationViewModel())
    }
}

extension DestinationDetailView {
    
    private var imageSection: some View {
        TabView {
            ForEach(destination.imageNames, id: \.self) {
                Image($0)
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIDevice.current.userInterfaceIdiom == .pad ? nil : UIScreen.main.bounds.width)
                    .clipped()
            }
        }
        .frame(height: 500)
        .tabViewStyle(PageTabViewStyle())
    }
    
    
}
