//
//  ContentView.swift
//  'Za Hunter
//
//  Created by Betzy Moreno on 2/23/24.
//

import SwiftUI
import MapKit

struct ContentView: View {
    @State private var region = MKCoordinateRegion(
            center: CLLocationCoordinate2D(
                latitude: 42.15704,
                longitude: -88.14812),
            span: MKCoordinateSpan(
                latitudeDelta: 0.05,
                longitudeDelta: 0.05)
        )
    @StateObject var locationManager = LocationManager()
        @State private var userTrackingMode: MapUserTrackingMode = .follow

    var body: some View {
        VStack {
            Map(
                        coordinateRegion: $region,
                        interactionModes: .all,
                        showsUserLocation: true,
                        userTrackingMode: $userTrackingMode
                    )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
struct Place: Identifiable {
    let id = UUID()
    let annotation: MKPointAnnotation
    let mapItem: MKMapItem
}
