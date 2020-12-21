//
//  MoviesListViewModel.swift
//  TestingAlamo
//
//  Created by Roberta Jorgo on 15.12.20.
//

import SwiftUI
import Combine
import Alamofire

class PlanetsListViewModel: ObservableObject, Identifiable {
    
    @Published var planets: [Planet] = []
    
    func fetchPlanets(url: String?) {
        
        AF.request(url ?? "https://swapi.dev/api/planets")
            .validate()
            .responseDecodable(of: Planets.self) { (response) in
                guard let planets = response.value else { return }
                var currentPlanets = self.planets
                currentPlanets.append(contentsOf: planets.all)
                self.planets = currentPlanets
                if !(planets.next ?? "").isEmpty { self.fetchPlanets(url: planets.next) }
            }
    }
}
