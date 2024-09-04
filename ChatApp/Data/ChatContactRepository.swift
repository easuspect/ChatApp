//
//  ChatContactRepository.swift
//  ChatApp
//
//  Created by Tolga Telseren on 8/31/24.
//

import Foundation

class ChatContactRepository {
    func getChatContacts() -> [ChatContact] {
        return [ChatContact(name: "Danny", isOnline: true), ChatContact(name: "Tolga", lastMessage: "Hi", isOnline: false)]
    }
}

