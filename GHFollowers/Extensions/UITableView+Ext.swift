//
//  UITableView+Ext.swift
//  GHFollowers
//
//  Created by Gyorgy Borz on 2020. 02. 02..
//  Copyright © 2020. Gyorgy Borz. All rights reserved.
//

import UIKit

extension UITableView {
    
    func reloadDataOnMainThread() {
        DispatchQueue.main.async {
            self.reloadData()
        }
    }
    
    func removeExcessCells() {
        tableFooterView = UIView(frame: .zero)
    }
    
}
