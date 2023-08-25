//
//  ViewModel.swift
//  DemoApp
//
//  Created by allyza elnar on 8/21/23.
//

import Foundation
import Combine

class ViewModel: ObservableObject {
    
    @Published var data = [Cats]()
    var cancellable = Set<AnyCancellable>()
    let service = NetworkService()
    
    func getData() {
        
        self.service.fetchData()
            .sink(receiveCompletion: { completion in
                switch(completion) {
                    case .finished:
                        break
                    case .failure(let error):
                        print(error.localizedDescription)
                }
            }, receiveValue: { [weak self] data in
                self?.data = data
            }) // sink end
            .store(in: &self.cancellable)
        
        
    }
    
    
    
}
