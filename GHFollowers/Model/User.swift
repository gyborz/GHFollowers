//
//  User.swift
//  GHFollowers
//
//  Created by Gyorgy Borz on 2020. 01. 29..
//  Copyright © 2020. Gyorgy Borz. All rights reserved.
//

import Foundation

struct User: Codable {
    let login: String
    let avatarURL: String
    let name: String?
    let location: String?
    let bio: String?
    let publicRepos: Int
    let publicGists: Int
    let htmlURL: String
    let following: Int
    let followers: Int
    let createdAt: String
}