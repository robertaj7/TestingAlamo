//
//  PlanetView.swift
//  TestingAlamo
//
//  Created by Roberta Jorgo on 20.12.20.
//

import SwiftUI

struct PlanetView: View {
    
    private var planet: Planet
    
    init(planet: Planet) {
        self.planet = planet
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(planet.name).font(.system(.largeTitle))
            Text("Terrain: \(planet.terrain)")
            Text("Climate: \(planet.climate)")
            Text("\(planet.surfaceWater == "1" ? "Has" : "Does not have") water").font(.system(.footnote))
        }
    }
}
