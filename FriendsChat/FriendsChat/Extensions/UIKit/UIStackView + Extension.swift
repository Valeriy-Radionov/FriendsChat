//
//  StackView + Extension.swift
//  FriendsChat
//
//  Created by Valera on 7/18/20.
//  Copyright © 2020 Valera. All rights reserved.
//

import UIKit

extension UIStackView {
    
    convenience init(arrangedSubviews: [UIView], axis: NSLayoutConstraint.Axis, spacing: CGFloat) {
        self.init(arrangedSubviews: arrangedSubviews)
        self.axis = axis
        self.spacing = spacing
        
    }
}
