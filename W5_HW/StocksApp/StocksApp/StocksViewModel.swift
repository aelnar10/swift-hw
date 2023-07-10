//
//  StocksViewModel.swift
//  StocksApp
//
//  Created by allyza elnar on 7/9/23.
//

// basing api calls off of this article since structure of api is similar to this one
// swiftsenpai.com/swift/async-await-network-requests/

import Foundation
import Combine

// for vm tests to have something about status
enum AsyncStatus {
    case initial, loading, loaded, error
}

class StocksViewModel: ObservableObject {
    
    @Published var stocksData = [Stock]()
    @Published var status: AsyncStatus = .initial
    
    let service: StocksServiceProtocol
    init(service: StocksServiceProtocol = StocksService()){
        self.service = service
    }
    
    @MainActor func getStocks() {
        status = .loading
        Task {
            do {
                self.stocksData = try await service.fetchStocks()
                self.status = .loaded
            } catch {
                print(error.localizedDescription)
                self.status = .error
            }
        } // task end
    } // end getstocks func
    
}
