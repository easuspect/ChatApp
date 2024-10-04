//
//  ChatContactRepository.swift
//  ChatApp
//
//  Created by Tolga Telseren on 8/31/24.
//

import Foundation

class ChatContactRepository {
    
    private var contacts: [ChatContact] = []
    
    func getChatContacts() -> [ChatContact] {
        return contacts
    }
    
    func addContact(_ contact: ChatContact) {
        contacts.append(contact)
    }
}

