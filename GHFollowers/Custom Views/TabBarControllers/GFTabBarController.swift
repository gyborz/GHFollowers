//
//  GFTabBarController.swift
//  GHFollowers
//
//  Created by Gyorgy Borz on 2020. 02. 01..
//  Copyright © 2020. Gyorgy Borz. All rights reserved.
//

import UIKit

class GFTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        UITabBar.appearance().tintColor = .systemGreen
        self.viewControllers = [createSearchNC(), createFavouritesNC()]
    }
    
    private func createSearchNC() -> UINavigationController {
        let searchVC = SearchViewController()
        searchVC.title = "Search"
        searchVC.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 0)
        
        return UINavigationController(rootViewController: searchVC)
    }
    
    private func createFavouritesNC() -> UINavigationController {
        let favouritesVC = FavouritesListViewController()
        favouritesVC.title = "Favourites"
        favouritesVC.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 1)
        
        return UINavigationController(rootViewController: favouritesVC)
    }

}
