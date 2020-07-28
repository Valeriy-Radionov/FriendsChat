//
//  UIImageView + Extension.swift
//  FriendsChat
//
//  Created by Valera on 7/17/20.
//  Copyright © 2020 Valera. All rights reserved.
//

import UIKit

extension UIImageView {
    
    convenience init(image: UIImage?, contentMode: ContentMode) {
        self.init()
        
        self.image = image
        self.contentMode = contentMode
    }
}

extension UIImageView {
    func setupColor(color: UIColor) {
        let templateImage = self.image?.withRenderingMode(.alwaysTemplate)
        self.image = templateImage
        self.tintColor = color
    }
}
