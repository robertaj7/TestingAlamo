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
}
