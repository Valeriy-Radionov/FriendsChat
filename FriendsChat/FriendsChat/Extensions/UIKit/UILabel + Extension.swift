//
//  UILabel + Extension.swift
//  FriendsChat
//
//  Created by Valera on 7/17/20.
//  Copyright © 2020 Valera. All rights reserved.
//

import UIKit

extension UILabel {
    
    convenience init(text: String, font: UIFont? = .avenir20()) {
        self.init()
        
        self.text = text
        self.font = font
    }
    
}
