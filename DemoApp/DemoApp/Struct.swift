//
//  Struct.swift
//  DemoApp
//
//  Created by allyza elnar on 8/21/23.
//

import Foundation

struct Cats: Codable, Identifiable {
    
    let id = UUID()
    
    var breed: String
    var name: String
    var address: String
    
    enum CodingKeys: String, CodingKey {
        case breed, name, address
    }
    
}
