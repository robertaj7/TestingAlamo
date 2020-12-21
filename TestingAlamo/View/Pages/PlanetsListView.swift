//
//  PlanetsListView.swift
//  TestingAlamo
//
//  Created by Roberta Jorgo on 20.12.20.
//

import SwiftUI

struct PlanetsListView: View {
    
    // note ObservedObject annotation
    @ObservedObject var viewModel = PlanetsListViewModel()
    
    var body: some View {
        List(viewModel.planets, id: \.self) { planet in
            NavigationLink(destination: PlanetDetailView(planet: planet)) {
                PlanetView(planet: planet)
            }
        }
        .listStyle(PlainListStyle())
        .onAppear {
            // when the list appears, trigger view model to fetch the movies list
            self.viewModel.fetchPlanets(url: nil)
        }
        .navigationBarTitle(Text("Planets"))
    }
}

struct PlanetsListView_Previews: PreviewProvider {
    static var previews: some View {
        PlanetsListView()
    }
}
