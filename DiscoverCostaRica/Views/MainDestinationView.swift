//
//  ContentView.swift
//  DiscoverCostaRica
//
//  Created by Brandon Rosales on 12/30/22.
//

import SwiftUI
import MapKit

struct MainDestinationView: View {
    
    @EnvironmentObject private var vm: DestinationViewModel
    
    let maxWidthForIpad: CGFloat = 700
    
    var body: some View {
        ZStack {
            mapLayer
                .ignoresSafeArea()
            VStack(spacing: 0) {
                header
                    .padding()
                    .frame(maxWidth: maxWidthForIpad)
                Spacer()
                
                destinationPreviewStack
            }
        }
        .sheet(item: $vm.sheetDestination) { destination in
            DestinationDetailView(destination: destination)
        }
        .sheet(item: $vm.sheetDestinationDirection) { destination in
            DestinationDirectionsView(destination: destination)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainDestinationView()
            .environmentObject(DestinationViewModel())
    }
}

extension MainDestinationView {
    
    private var header: some View {
        VStack {
            HStack {
                Button {
                    vm.toggleDestinationsList()
                } label: {
                    Text(vm.mapDestination.shortName)
                        .font(.title2)
                        .fontWeight(.black)
                        .foregroundColor(.primary)
                        .frame(height: 65)
                        .frame(maxWidth: .infinity)
                        .animation(.none, value: vm.mapDestination)
                        .overlay(alignment: .leading) {
                            Image(systemName: "arrow.down")
                                .font(.headline)
                                .foregroundColor(.primary)
                                .padding()
                                .rotationEffect(Angle(degrees: vm.showDestinationsList ? 180 : 0))
                        }
                        .overlay(alignment: .trailing) {
                            Button {
                                //Action which toggles favorites list
                            } label: {
                                Image(systemName: "heart.fill")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 24, height: 24)
                                    .foregroundColor(Color.red)
                                    //Need to customize the animation of the heart
                                    .animation(.none, value: vm.showFavoritesList)
                                    .padding()
                                    
                            }
                        }
                }
                
            }
            if vm.showDestinationsList {
                DestinationListView()
                    .onAppear()
            }
        }
        .background(.thickMaterial)
        .cornerRadius(10)
        .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 15)
    }
    
    private var mapLayer: some View {
        Map(coordinateRegion: $vm.mapRegion, annotationItems: vm.destinations) { destination in
            MapAnnotation(coordinate: destination.coordinates) {
                //Custom Map Pin
                DestinationAnnotationView() // - Confirmed to Equatable here
                    .scaleEffect(vm.mapDestination == destination ? 1 : 0.7)
                    .shadow(radius: 10)
                    .onTapGesture {
                        vm.showNextDestination(destintion: destination)
                    }
            }
        }
    }
    
    private var destinationPreviewStack: some View {
        ZStack {
            ForEach(vm.destinations) { destination in
                
                if vm.mapDestination == destination {
                    DestinationPreviewView(destination: destination)
                        .shadow(color:Color.accentColor.opacity(0.3), radius: 20)
                        .padding()
                        .frame(maxWidth: maxWidthForIpad)
                        .frame(maxWidth: .infinity)
                        .transition(.asymmetric(
                            insertion: .move(edge: .trailing),
                            removal: .move(edge: .leading)))
                        .offset(y: -10)
                }
                
            }
        }
    }
}
