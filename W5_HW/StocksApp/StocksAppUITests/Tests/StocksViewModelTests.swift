//
//  StocksViewModelTests.swift
//  StocksAppTests
//
//  Created by allyza elnar on 7/10/23.
//

import XCTest
@testable import StocksApp
import Combine

// my json files
enum FileName: String {
    case stocksGood
    case stocksBad
}

final class StocksViewModelTests: XCTestCase {
    
    var cancellables = Set<AnyCancellable>()

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        cancellables = []
    }
    
    // successful test
    // since this is using async throws the funcs have to have mainactor
    @MainActor func test_getStocks_success(){
        let exp = XCTestExpectation(description: "testing stocks success")
        let svm = StocksViewModel(service: MockStocksService(fileName: .stocksGood))
        
        svm.getStocks()
        
        svm.$stocksData
            .sink { stocks in
                let stock = stocks.first!
                XCTAssertEqual(stock.name, "S&P 500")
                exp.fulfill()
            }
            .store(in: &cancellables)
        
        wait(for: [exp], timeout: 5.0)
        
    } // end success test
    
    // failed test
    @MainActor func test_getStocks_failure(){
        let exp = XCTestExpectation(description: "testing stocks failure")
        let svm = StocksViewModel(service: MockStocksService(fileName: .stocksBad))
        
        svm.getStocks()
        
        svm.$status
            .sink { state in
                XCTAssertEqual(state, .error)
                exp.fulfill()
            }
            .store(in: &cancellables)
        
        wait(for: [exp], timeout: 5.0)
        
    } // end failure test


} // end test final class

// mock service to run tests on using protocol
class MockStocksService: StocksServiceProtocol {
    
    // filename init
    let fileName: FileName
    init(fileName: FileName){
        self.fileName = fileName
    }
    
    // for loading json files
    private func loadMockData(_ file: String) -> URL? {
        return Bundle(for: type(of: self)).url(forResource: file, withExtension: "json")
    } // end loadmockdata func
    
    // for fetching movies using protocol function
    func fetchStocks() async throws -> [Stock] {
        guard let url = self.loadMockData(fileName.rawValue) else {
            throw APIError.invalidURL
        } // end guard
        
        let (data, _) = try await URLSession.shared.data(from: url)
        
        let stocksResult = try JSONDecoder().decode(StocksResponse.self, from: data)
        return stocksResult.stocks
        
    } // end mockservice fetchstocks func
    
}
