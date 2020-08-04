//
//  MUser.swift
//  FriendsChat
//
//  Created by Valera on 7/28/20.
//  Copyright © 2020 Valera. All rights reserved.
//

import UIKit
import FirebaseFirestore

struct MUser: Hashable, Decodable {
    
    var username: String
    var email: String
    var description: String
    var avatarStringURL : String
    var sex: String
    var id: String
    
    init(username: String, email: String, description: String, avatarStringURL: String, sex: String, id: String) {
        self.username = username
        self.email = email
        self.description = description
        self.avatarStringURL = avatarStringURL
        self.sex = sex
        self.id = id
    }
    
    init?(document: DocumentSnapshot) {
        guard let data = document.data() else { return nil }
        guard let username =  data["username"] as? String,
            let email =  data["email"] as? String,
            let avatarStringURL =  data["avatarStringURL"] as? String,
            let description =  data["description"] as? String,
            let sex =  data["sex"] as? String,
            let id =  data["uid"] as? String else { return nil }
        
        self.username = username
        self.email = email
        self.description = description
        self.avatarStringURL = avatarStringURL
        self.sex = sex
        self.id = id
    }
    
    init?(document: QueryDocumentSnapshot) {
        let data = document.data() 
        guard let username =  data["username"] as? String,
            let email =  data["email"] as? String,
            let avatarStringURL =  data["avatarStringURL"] as? String,
            let description =  data["description"] as? String,
            let sex =  data["sex"] as? String,
            let id =  data["uid"] as? String else { return nil }
        
        self.username = username
        self.email = email
        self.description = description
        self.avatarStringURL = avatarStringURL
        self.sex = sex
        self.id = id
    }
    
    var representation:[String: Any] {
        var rep = ["username": username]
        rep["sex"] = sex
        rep["uid"] = id
        rep["email"] = email
        rep["avatarStringURL"] = avatarStringURL
        rep["description"] = description
        return rep
    }
    
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
        return username.lowercased().contains(lowercasedFilter)
    }
    
}
