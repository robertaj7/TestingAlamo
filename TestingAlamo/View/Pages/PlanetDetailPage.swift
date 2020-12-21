//
//  PlanetDetailPage.swift
//  TestingAlamo
//
//  Created by Roberta Jorgo on 20.12.20.
//

import SwiftUI

struct PlanetDetailView: View {
    private var planet: Planet
    
    init(planet: Planet) {
        self.planet = planet
    }
    
    var body: some View {
        VStack {
            Text("Rotation period").font(.headline)
        }
        .navigationTitle(planet.name)
    }
}
