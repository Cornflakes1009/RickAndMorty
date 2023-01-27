//
//  RMRequest.swift
//  RickAndMorty
//
//  Created by Harold Davidson on 1/22/23.
//

import Foundation


/// Object that represents a single API call
final class RMRequest {
    
    /// API Constants
    private struct Conastants {
        static let baseUrl = "https://rickandmortyapi.com/api"
    }
    
    /// Desired endpoint
    private let endpoint: RMEndpoint
    
    /// Path components for API if any
    private let pathCompnents: [String]
    
    /// Query arguments for API if any
    private let queryParameters: [URLQueryItem]
    
    /// Constructed url for the api request in string format
    private var urlString: String {
        var string = Conastants.baseUrl
        string += "/"
        string += endpoint.rawValue
        
        if !pathCompnents.isEmpty {
            pathCompnents.forEach({
                string += "/\($0)"
            })
        }
        
        /// Constructed url for the apir request in string format. www.url.com?name=value&name1=value1
        if !queryParameters.isEmpty {
            string += "?"
            let argumentString = queryParameters.compactMap({
                guard let value = $0.value else { return nil }
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
            string += argumentString
        }
        
        return string
    }
    
    /// Computed and constructed API url
    public var url: URL? { // computer property
        return URL(string: urlString)
    }
    
    /// Desired http method
    public let httpMethod = "GET"
    
    // MARK: - Public
    
    /// Contstructed request
    /// - Parameters:
    ///   - endpoint: Target endpoint
    ///   - pathCompnents: Collection of Path components
    ///   - queryParameters: Collection of query parameters
    init(endpoint: RMEndpoint, pathCompnents: [String] = [], queryParameters: [URLQueryItem] = []) {
        self.endpoint = endpoint
        self.pathCompnents = pathCompnents
        self.queryParameters = queryParameters
    }
}

extension RMRequest {
    static let listCharactersRequests = RMRequest(endpoint: .character)
}
