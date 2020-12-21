//
//  Films.swift
//  TestingAlamo
//
//  Created by Roberta Jorgo on 20.12.20.
//

import Foundation

struct Movies: Decodable {
    let count: Int
    let all: [Movie]
    
    enum CodingKeys: String, CodingKey {
        case count
        case all = "results"
    }
    
    var sortedByEpisodeNumber: [Movie] {
        return all.sorted(by: { (movie1, movie2) -> Bool in
            return movie1.id < movie2.id
        })
    }
    
    var sortedByReleaseDate: [Movie] {
        return all.sorted(by: { (movie1, movie2) -> Bool in
            return movie1.releaseDateDisplayable < movie2.releaseDateDisplayable
        })
    }
}
