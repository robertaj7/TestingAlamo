//
//  MoviesListViewModel.swift
//  TestingAlamo
//
//  Created by Roberta Jorgo on 15.12.20.
//

import SwiftUI
import Combine
import Alamofire

class MoviesListViewModel: ObservableObject, Identifiable {
    
    @Published var films: [Movie] = []
    @Published var starships: [Starship] = []
    
    func fetchFilms() {
        AF.request("https://swapi.dev/api/films")
            .validate()
            .responseDecodable(of: Movies.self) { (response) in
                guard let films = response.value else { return }
                self.films = films.sortedByEpisodeNumber
            }
    }
}
