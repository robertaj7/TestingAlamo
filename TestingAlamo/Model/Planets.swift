//
//  Planets.swift
//  TestingAlamo
//
//  Created by Roberta Jorgo on 20.12.20.
//

import Foundation

struct Planets: Decodable {
    let count: Int
    let all: [Planet]
    let next: String?
    
    enum CodingKeys: String, CodingKey {
        case count
        case all = "results"
        case next
    }
}
