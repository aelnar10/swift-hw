//
//  PokedexService.swift
//  PokedexApp
//
//  Created by allyza elnar on 8/6/23.
//

import Foundation
import Combine

// error handling
enum APIError: Error {
    case invalidURL
    case invalidResponse
}

protocol PokedexProtocol {
    func fetchPokemon() async throws -> [Pokemon]
}

class PokedexService: PokedexProtocol {
    
    func fetchPokemon() async throws -> [Pokemon] {
        
        guard let url = URL(string: "https://pokeapi.co/api/v2/pokemon/?limit=100&offset=0") else {
            throw APIError.invalidURL
        }
        
        let (data, _) = try await URLSession.shared.data(from: url)
        
        let response = try JSONDecoder().decode(PokedexResponse.self, from: data)
        return response.results
        
    } // end fetch fcn
    
}
