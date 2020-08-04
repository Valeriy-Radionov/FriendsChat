//
//  WaitingChatsNavigation.swift
//  FriendsChat
//
//  Created by Valera on 8/2/20.
//  Copyright © 2020 Valera. All rights reserved.
//

import Foundation

protocol WaitingChatsNavigation: class {
    
    func removeWaitingChat(chat: MChat)
    func changeToActive(chat: MChat)
}
