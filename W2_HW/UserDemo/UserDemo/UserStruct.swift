//
//  UserStruct.swift
//  UserDemo
//
//  Created by allyza elnar on 6/19/23.
//

import Foundation

// struct for users with name, email, and phone
struct User: Codable, Identifiable {

    let userId: Int
    let id: Int
    let title: String
    let body: String

}
