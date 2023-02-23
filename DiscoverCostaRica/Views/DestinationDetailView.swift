//
//  DestinationDetailView.swift
//  DiscoverCostaRica
//
//  Created by Brandon Rosales on 12/31/22.
//

import SwiftUI
import MapKit

struct DestinationDetailView: View {
    
    @EnvironmentObject private var vm: DestinationViewModel
    
    let destination: Destination
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                imageSection
                    .shadow(color: Color.black.opacity(0.3), radius: 20, x:0, y: 10)
                
                
                HStack {
                    VStack(alignment: .leading, spacing: 8) {
                        titleSection
                    }
                    .padding(.leading, 14)
                    Spacer()
                    
                    VStack {
                        favoriteButton
                    }
                    
                }
                Divider()
                
                descriptionSection
                
                Divider()
                
                priceAndDirections
                
                Divider()
                
                mapLayer
            }
        }
        .ignoresSafeArea()
        .background(.ultraThinMaterial)
        .overlay(backButton, alignment: .topLeading)
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
    
    private var titleSection: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(destination.name)
                .font(.largeTitle)
                .fontWeight(.semibold)
            
            Text(destination.city)
                .font(.title2)
                .foregroundColor(.secondary)
            
            Text(destination.hoursOfOperation)
                .font(.subheadline)
                .fontWeight(.light)
        }
    }
    
    private var favoriteButton: some View {
        
            VStack(alignment: .leading) {
                Button {
                    vm.toggleFavorites(item: destination)
                } label: {
                    Image(systemName: vm.contains(destination) ? "heart.fill" : "heart")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 40, height: 40)
                        .foregroundColor(Color.red)
                        .fontWeight(.thin)
                }
            }
            .padding(30)
    }
    
    private var descriptionSection: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("About")
                .font(.title)
            Text(destination.description)
                .font(.subheadline)
                .foregroundColor(.secondary)
            
            if let url = URL(string: destination.link) {
                Link("Read more about \(destination.name)", destination: url)
            }
        }
        .padding()
    }
    
    private var priceAndDirections: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Price")
                .font(.title2)
            Text(destination.price)
                .font(.subheadline)
            Divider()
            Text("Written Directions")
                .font(.title2)
            Text(destination.textDirections)
                .font(.subheadline)
        }
        .padding()
    }
    
    private var mapLayer: some View {
        Button {
            vm.sheetDestinationDirection = destination
            
        } label: {
            Map(coordinateRegion: .constant(MKCoordinateRegion(
                center: destination.coordinates,
                span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1))),
                annotationItems: [destination]) { destination in
                MapAnnotation(coordinate: destination.coordinates) {
                    DestinationAnnotationView()
                        .shadow(radius: 10)
                }
            }
                .allowsHitTesting(false)
                .aspectRatio(1, contentMode: .fit)
                .cornerRadius(30)
                .padding()
        }

        
    }
    
    private var backButton: some View {
        Button {
            vm.sheetDestination = nil
        } label: {
            Image(systemName: "xmark")
                .font(.headline)
                .padding(16)
                .foregroundColor(.primary)
                .background(.thickMaterial)
                .cornerRadius(10)
                .shadow(radius: 4)
                .padding()
        }

    }
    
    
}
