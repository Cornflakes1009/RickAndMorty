//
//  RMLocation.swift
//  RickAndMorty
//
//  Created by Harold Davidson on 1/19/23.
//

import Foundation

struct RMLocation: Codable {
    let id: Int
    let name: String
    let type: String
    let dimension: String
    let residents: [String]
    let url: String
    let created: String
}
