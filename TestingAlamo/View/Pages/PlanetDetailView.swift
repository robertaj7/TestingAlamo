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
            Text("Rotation period: \(planet.rotationPeriod)").font(.subheadline)
            Text("Orbital period: \(planet.orbitalPeriod)").font(.subheadline)
            Text("Diameter diameter: \(planet.diameter)").font(.subheadline)
            Text("Gravity: \(planet.gravity)").font(.subheadline)
            Text("Terrain: \(planet.terrain)").font(.subheadline)
            Text("Surface water: \(planet.surfaceWater)").font(.subheadline)
            Text("Population: \(planet.population)").font(.subheadline)
            Image("planet-big")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
            
        }
        .navigationTitle(planet.name)
    }
}
