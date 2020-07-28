//
//  SelfConfiguringCell.swift
//  FriendsChat
//
//  Created by Valera on 7/27/20.
//  Copyright © 2020 Valera. All rights reserved.
//

import Foundation

protocol SelfConfiguringCell {
    static var reuseId: String { get }
    func configure<U: Hashable>(with value: U)
}
