//
//  Stocks.swift
//  StocksApp
//
//  Created by allyza elnar on 7/9/23.
//

import Foundation


struct StocksResponse: Codable {
    let stocks: [Stock] // leads to below which has all the info we need
}


struct Stock: Codable, Hashable, Identifiable {
    
    let id = UUID()
    
    // main components in json file
    let ticker: String
    let name: String
    let currency: String
    let current_price_cents: Double
    
    // to get rid of xcode's warning about id
    enum CodingKeys: String, CodingKey {
        case ticker, name, currency, current_price_cents
    }
    
}
