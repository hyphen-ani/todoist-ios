//
//  User.swift
//  TodoApplication
//
//  Created by Anirudh Nandy on 08/04/26.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
