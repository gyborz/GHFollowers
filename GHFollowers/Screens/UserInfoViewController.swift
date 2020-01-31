//
//  UserInfoViewController.swift
//  GHFollowers
//
//  Created by Gyorgy Borz on 2020. 01. 31..
//  Copyright © 2020. Gyorgy Borz. All rights reserved.
//

import UIKit

class UserInfoViewController: UIViewController {
    
    private var follower: Follower!
    
    init(with follower: Follower) {
        self.follower = follower
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(dismissVC))
        navigationItem.rightBarButtonItem = doneButton
        
        NetworkManager.shared.getUserInfo(for: follower.login) { [weak self] result in
            guard let self = self else { return }
            switch result {
            case .success(let user):
                print(user)
            case .failure(let error):
                self.presentGFAlertOnMainThread(title: "Something went wrong", message: error.rawValue, buttonTitle: "OK")
            }
        }
    }
    
    @objc private func dismissVC() {
        dismiss(animated: true)
    }
    
}
