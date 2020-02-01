//
//  GFRepoItemViewController.swift
//  GHFollowers
//
//  Created by Gyorgy Borz on 2020. 02. 01..
//  Copyright © 2020. Gyorgy Borz. All rights reserved.
//

import UIKit

class GFRepoItemViewController: GFItemInfoViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureItems()
    }
    
    private func configureItems() {
        itemInfoViewOne.set(itemInfoType: .repos, withCount: user.publicRepos)
        itemInfoViewTwo.set(itemInfoType: .gists, withCount: user.publicGists)
        actionButton.set(backgroundColor: .systemPurple, title: "GitHub Profile")
    }
    
    override func actionButtonTapped() {
        delegate.didTapGitHubProfile(for: user)
    }
    
}
