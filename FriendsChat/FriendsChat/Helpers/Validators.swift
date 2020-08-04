//
//  Validators.swift
//  FriendsChat
//
//  Created by Valera on 7/31/20.
//  Copyright © 2020 Valera. All rights reserved.
//

import Foundation

class Validators {
    
    static func isFilled(email: String?, passowrd: String?, confirmPassword: String?) -> Bool {
        guard let email = email, let password = passowrd, let confirmPassword = confirmPassword,
            email != "", password != "", confirmPassword != "" else { return false }
        return true
    }
    
    static func isFilled(username: String?, description: String?, sex: String?) -> Bool {
        guard let username = username, let description = description, let sex = sex,
            username != "", description != "", sex != "" else { return false }
        return true
    }
    
    static func isSimpleEmail(_ email: String) -> Bool {
        let emailRegEx = "^.+@.+\\..{2,}$"
        return check(text: email, regEx: emailRegEx)
    }
    
    private static func check(text: String, regEx: String) -> Bool {
        let predicate = NSPredicate(format: "SELF MATCHES %@", regEx)
        return predicate.evaluate(with: text)
    }
    
}
