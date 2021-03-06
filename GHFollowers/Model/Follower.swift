//
//  Follower.swift
//  GHFollowers
//
//  Created by Gyorgy Borz on 2020. 01. 29..
//  Copyright © 2020. Gyorgy Borz. All rights reserved.
//

import Foundation

struct Follower: Codable, Hashable {
    let login: String
    let avatarUrl: String
}
