//
//  MyMap.swift
//  SkiilUp
//
//  Created by Maha Alassaf on 20/05/1444 AH.
//
import SwiftUI
import MapKit

struct MyMap: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))

    var body: some View {
        Map(coordinateRegion: $region)
                  .frame(width: 400, height: 300)
    }
}

struct MyMap_Previews: PreviewProvider {
    static var previews: some View {
        MyMap()
    }
}
