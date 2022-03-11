//
//  MapView.swift
//  Lotification
//
//  Created by 인병윤 on 2022/03/11.
//

import SwiftUI
import MapKit

struct MapView: View {

    @EnvironmentObject var viewModel: MapViewModel

    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 37.5666791, longitude: 126.9782914), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))

    var body: some View {
        Map(coordinateRegion: $region, showsUserLocation: true, userTrackingMode: .constant(.follow))
    }
}
