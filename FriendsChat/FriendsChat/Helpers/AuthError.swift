//
//  AuthError.swift
//  FriendsChat
//
//  Created by Valera on 7/31/20.
//  Copyright © 2020 Valera. All rights reserved.
//

import Foundation

enum AuthError {
    case notFilled
    case invalidEmail
    case passordNotMached
    case unknownError
    case serverError
}

extension AuthError: LocalizedError {
    var errorDescription: String? {
        switch self {
            
        case .notFilled:
            return NSLocalizedString("Заполните все поля", comment: "")
        case .invalidEmail:
            return NSLocalizedString("Формат почты не является допустимым", comment: "")
            
        case .passordNotMached:
            return NSLocalizedString("Пароли не совподают", comment: "")
            
        case .unknownError:
            return NSLocalizedString("Неизвестная ошибка", comment: "")
            
        case .serverError:
            return NSLocalizedString("Ошибка сервера", comment: "")
            
        }
    }
}
