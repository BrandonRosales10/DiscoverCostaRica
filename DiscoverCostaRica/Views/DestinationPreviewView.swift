//
//  DestinationPreviewView.swift
//  DiscoverCostaRica
//
//  Created by Brandon Rosales on 12/31/22.
//

import SwiftUI

struct DestinationPreviewView: View {
    
    let destination: Destination
    
    var body: some View {
        HStack(alignment: .bottom) {
            VStack(alignment: .leading, spacing: 16) {
                imageSection
                titleSection
            }
            
            VStack(spacing: 16) {
                discoverMoreButton
                directionsButton
            }
        }
        .padding(20)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(.ultraThinMaterial)
                .offset(y:85)
        )
        .cornerRadius(10)
    }
}

extension DestinationPreviewView {
    
    private var imageSection: some View {
        ZStack {
            if let imageName = destination.imageNames.first {
                Image(imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 100)
                    .cornerRadius(10)
            }
        }
        .padding(5)
        .background(Color.white)
        .cornerRadius(10)
    }
    
    private var titleSection: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(destination.name)
                .font(.title2)
                .fontWeight(.bold)
  
            Text(destination.province)
                .font(.subheadline)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
    
    private var discoverMoreButton: some View {
        Button {
            
        } label: {
            Text("Discover More")
                .font(.headline)
                .frame(width: 125, height: 35)
        }
        .buttonStyle(.borderedProminent)
    }
    
    private var directionsButton: some View {
        Button {
            
        } label: {
            Text("Directions")
                .font(.headline)
                .frame(width: 150, height: 45)
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
        }
        

    }
    
}



struct DestinationPreviewView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.gray.ignoresSafeArea()
            
            DestinationPreviewView(destination: DestinationDataService.destinations.first!)
                .padding()
        }
        .environmentObject(DestinationViewModel())
    }
}


