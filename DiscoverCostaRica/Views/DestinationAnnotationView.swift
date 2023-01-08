//
//  DestinationAnnotationView.swift
//  DiscoverCostaRica
//
//  Created by Brandon Rosales on 12/31/22.
//

import SwiftUI

struct DestinationAnnotationView: View {
    
    let accentColor = Color("AccentColor")
    
    var body: some View {
        VStack(spacing: 0) {
            Image(systemName: "globe.americas.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30)
                .font(.headline)
                .foregroundColor(.white)
                .padding(6)
                .background(accentColor)
                .clipShape(Circle())
            
            Image(systemName: "triangle.fill")
                .resizable()
                .scaledToFit()
                .foregroundColor(accentColor)
                .frame(width: 15, height: 10)
                .rotationEffect(Angle(degrees: 180))
                .offset(y: -5)
                .padding(.bottom, 40)
        }
    }
}

struct DestinationAnnotationView_Previews: PreviewProvider {
    static var previews: some View {
        DestinationAnnotationView()
    }
}

