//
//  MapView.swift
//  Landmarks
//
//  Created by oliveira.higor on 15/04/23.
//

import SwiftUI
import MapKit

struct MapView: View {
    var coordinate: CLLocationCoordinate2D
    
    @State private var region = MKCoordinateRegion()
    var body: some View {
        Map(coordinateRegion: $region)
            .onAppear {
                setRegion(coordinate)
            }
    }
    
    private func setRegion(_ coordinate: CLLocationCoordinate2D) {
        region = MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
}

struct MapView_Previews: PreviewProvider {
    
    static var previews: some View {
        MapView(
            coordinate: CLLocationCoordinate2D(
                latitude: -22.3207858, longitude: -46.9468864
            )
        )
    }
}
