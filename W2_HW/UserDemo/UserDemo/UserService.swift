//
//  UserService.swift
//  UserDemo
//
//  Created by allyza elnar on 6/19/23.
//

import Foundation
import Combine

class UserService {

    let urlString = "https://jsonplaceholder.typicode.com/posts"
    var cancellable = Set<AnyCancellable>()

    func fetchUsers() -> Future<[User], Error> {
            return Future { promise in

                let finalURLString = self.urlString
                let url = URL(string: finalURLString)!

                URLSession.shared.dataTaskPublisher(for: url) // publishing events
                    .map{ $0.data } // the data
                    .decode(type: [User].self, decoder: JSONDecoder()) // decode from json
                    .receive(on: RunLoop.main) // start receiving on main thread
                    .sink{ completion in // subscribing to events coming from publisher, listening for them
                        switch completion { // 2 possibilites
                            case .finished: // if request process is finished, break
                                break
                            case .failure(let err): // if not, error
                                promise(.failure(err))
                        }
                    } receiveValue: { response in
                            promise(.success(response)) // should just be the user object
                        } // if receving value is successful, send back succesful responses
                    .store(in: &self.cancellable) // storing task somewhere until we're done -> need this
            }
    }

}


