//
//  Deals.swift
//  DealsApp
//
//  Created by allyza elnar on 7/3/23.
//

import Foundation

// throwable + extension borrowed from this
// medium.com/@michaeldouglascs/how-to-safely-decode-arrays-using-decodable-result-type-in-swift-5b975ea11ff5
// used this to decode the array of deals that's coming in from dealsresponse

public struct Throwable<T: Decodable>: Decodable {
    
    public let result: Result<T, Error>

    public init(from decoder: Decoder) throws {
        let catching = { try T(from: decoder) }
        result = Result(catching: catching )
    }
}

// for service
struct DealsResponse: Codable {
    let data: Deals
}

// for response
struct Deals: Codable {
    let deals: [Deal]
}

extension Deals {
  
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        let throwables = try values.decode([Throwable<Deal>].self, forKey: .deals)
        deals = throwables.compactMap { try? $0.result.get() }
    }
}

// for each deal
struct Deal: Codable, Identifiable {
    let id: String
    let title: String
    let url: String
    let price: Int
    let description: String
    let createdAt: String
    let updatedAt: String
    let product: Product
    let likes: [Likes]
}

// for each like under deal
struct Likes: Codable {
    let id: String
    let user: [User]
}

// for each user
struct User: Codable {
    let id: String
    let name: String
    let deal: [UserDeal]
}

// for each user deal
struct UserDeal: Codable {
    let id: String
    let title: String
    let url: String
    let price: Int
    let createdAt: String
    let updatedAt: String
}

// for each product
struct Product: Codable {
    let availability: String
    let image: String
    let description: String
    let sku: String
    let updatedAt: String
}
