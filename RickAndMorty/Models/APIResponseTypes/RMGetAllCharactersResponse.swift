//
//  RMGetAllCharactersResponse.swift
//  RickAndMorty
//
//  Created by Harold Davidson on 1/25/23.
//

import Foundation

struct RMGetAllCharactersResponse: Codable {
    struct Info: Codable {
        let count: Int
        let pages: Int
        let next: String?
        let prev: String?
        
    }
    
    let info: Info
    let results: [RMCharacter]
}

