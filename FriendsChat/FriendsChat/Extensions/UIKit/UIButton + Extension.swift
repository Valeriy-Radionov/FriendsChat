//
//  UIButton + Extension.swift
//  FriendsChat
//
//  Created by Valera on 7/17/20.
//  Copyright © 2020 Valera. All rights reserved.
//

import UIKit

extension UIButton {
    
    convenience init(title: String, isShadow: Bool = false, font: UIFont? = .avenir20(), cornerRadius: CGFloat = 4,  backgroundColor: UIColor, titleColor: UIColor) {
        self.init(type: .system)
        
        self.setTitle(title, for: .normal)
        self.setTitleColor(titleColor, for: .normal)
        self.backgroundColor = backgroundColor
        self.titleLabel?.font = font
        self.layer.cornerRadius = cornerRadius
        
        if isShadow {
            self.layer.shadowColor = UIColor.black.cgColor
            self.layer.shadowRadius = 4
            self.layer.shadowOpacity = 0.2
            self.layer.shadowOffset = CGSize(width: 0, height: 4)
        }
    }
    
    func customizeGoogleButton() {
        let googleLogo = UIImageView(image: #imageLiteral(resourceName: "googleLogo"), contentMode: .scaleAspectFit)
        googleLogo.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(googleLogo)
        googleLogo.heightAnchor.constraint(equalToConstant: 40).isActive = true
        googleLogo.widthAnchor.constraint(equalToConstant: 40).isActive = true
        googleLogo.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 24).isActive = true
        googleLogo.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
    }
    
}

