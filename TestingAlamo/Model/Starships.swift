//
//  Starship.swift
//  TestingAlamo
//
//  Created by Roberta Jorgo on 20.12.20.
//

import Foundation

struct Starships: Decodable {
  var count: Int
  var all: [Starship]
  
  enum CodingKeys: String, CodingKey {
    case count
    case all = "results"
  }
}

