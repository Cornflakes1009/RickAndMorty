//
//  RMCharacter.swift
//  RickAndMorty
//
//  Created by Harold Davidson on 1/19/23.
//

import Foundation

struct RMCharacter: Codable {
    let id: Int
    let name: String
    let status: String // RMCharacterStatus
    let species: String
    let type: String
    let gender: String // RMCharacterGender
    let origin: RMOrigin
    let location: RMSingleLocation
    let image: String
    let episode: [String]
    let url: String
    let created: String
}


