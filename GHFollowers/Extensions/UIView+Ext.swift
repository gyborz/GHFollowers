//
//  UIView+Ext.swift
//  GHFollowers
//
//  Created by Gyorgy Borz on 2020. 02. 02..
//  Copyright © 2020. Gyorgy Borz. All rights reserved.
//

import UIKit

extension UIView {
    
    func addSubviews(_ views: UIView...) {
        for view in views {
            addSubview(view)
        }
    }
    
}
