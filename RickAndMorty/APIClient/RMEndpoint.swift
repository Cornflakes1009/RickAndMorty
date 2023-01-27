//
//  RMEndpoint.swift
//  RickAndMorty
//
//  Created by Harold Davidson on 1/22/23.
//

import Foundation

/// Represents unique API endpoint
@frozen enum RMEndpoint: String {
    /// Endpoint to get character info
    case character
    /// Endpoint to get character info
    case location
    /// Endpoint to get character info
    case episode
}
