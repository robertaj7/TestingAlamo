//
//  Planet.swift
//  TestingAlamo
//
//  Created by Roberta Jorgo on 20.12.20.
//

import Foundation

struct Planet: Decodable, Hashable {
  var name: String
  var rotationPeriod: String
  var orbitalPeriod: String
  var diameter: String
  var climate: String
  var gravity: String
  var terrain: String
  var surfaceWater: String
  var population: String
  
  enum CodingKeys: String, CodingKey {
    case name
    case rotationPeriod = "rotation_period"
    case orbitalPeriod = "orbital_period"
    case diameter
    case climate
    case gravity
    case terrain
    case surfaceWater = "surface_water"
    case population
  }
}
