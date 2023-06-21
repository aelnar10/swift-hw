//
//  UserViewModel.swift
//  UserDemo
//
//  Created by allyza elnar on 6/19/23.
//

import Foundation
import Combine

class UserViewModel: ObservableObject {

    @Published var users = [User]()
    var cancellable = Set<AnyCancellable>()
    let service = UserService()
    
    func getUsers(){
        // fetching all users and putting them into the published var
        service.fetchUsers()
            .sink{ completion in
                switch completion {
                    case .finished:
                        break
                    case .failure(let err):
                        print(err.localizedDescription)
                }
            } receiveValue: { users in // the one getting user info
                    self.users = users
            }
            .store(in: &cancellable)
        
    } // end of func

}


