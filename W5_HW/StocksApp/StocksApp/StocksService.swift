//
//  StocksService.swift
//  StocksApp
//
//  Created by allyza elnar on 7/9/23.
//

// basing api calls off of this article since structure of api is similar to this one
// swiftsenpai.com/swift/async-await-network-requests/

import Foundation
import Combine

// for errors within service
enum APIError: Error {
    case invalidURL
    case invalidResponse
}

// protocol for unit testing
protocol StocksServiceProtocol {
    func fetchStocks() async throws -> [Stock]
}

class StocksService: StocksServiceProtocol {
    
    func fetchStocks() async throws -> [Stock]{
        guard let url = URL(string: "https://storage.googleapis.com/cash-homework/cash-stocks-api/portfolio.json") else {
            throw APIError.invalidURL
        } // end guard
        
        let (data, _) = try await URLSession.shared.data(from: url)
        
        let stocksResult = try JSONDecoder().decode(StocksResponse.self, from: data)
        return stocksResult.stocks
        
    } // end fetchstocks func
    
}

