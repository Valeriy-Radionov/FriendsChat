//
//  MUser.swift
//  FriendsChat
//
//  Created by Valera on 7/28/20.
//  Copyright © 2020 Valera. All rights reserved.
//

import UIKit

struct MUser: Hashable, Decodable {
    
    var userName: String
    var avatarStringURL : String
    var id: Int
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    static func == (lhs: MUser, rhs: MUser) -> Bool {
        return lhs.id == rhs.id
    }
    
    func contains(filter: String?) -> Bool {
        guard let filter = filter else { return true }
        if filter.isEmpty { return true }
        let lowercasedFilter = filter.lowercased()
        return userName.lowercased().contains(lowercasedFilter)
    }
    
}
