//
//  Pokemon.swift
//  PokedexApp
//
//  Created by allyza elnar on 8/6/23.
//

import Foundation

struct PokedexResponse: Codable {
    let results: [Pokemon]
}

struct Pokemon: Codable, Identifiable {
    
    let id = UUID()
    
    let name: String
    
    enum CodingKeys: String, CodingKey {
        case name
    }
    
}
