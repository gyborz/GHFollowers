//
//  GFError.swift
//  GHFollowers
//
//  Created by Gyorgy Borz on 2020. 01. 31..
//  Copyright © 2020. Gyorgy Borz. All rights reserved.
//

import Foundation

enum GFError: String, Error {
    case invalidUsername = "This username created an invalid request. Please try again."
    case unableToComplete = "Unable to complete your request. Please check your internet connection"
    case invalidResponse = "Invalid response from the server. Please try again."
    case invalidData = "The data received from the server was invalid. Please try again."
    case unableToFavourite = "There was an error adding this user to favourites. Please try again."
    case alreadyInFavourites = "You already added this user to favourites."
}
