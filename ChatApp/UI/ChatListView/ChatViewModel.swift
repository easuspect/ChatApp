//
//  ChatViewModel.swift
//  ChatApp
//
//  Created by Tolga Telseren on 9/28/24.
//

import Foundation

class ChatViewModel: ObservableObject {
    
    private var chatContactRepository: ChatContactRepository = ChatContactRepository()
    @Published var chatContacts: [ChatContact] = []
    
    func gatChatContacts() -> [ChatContact] {
        return chatContacts
    }
    
    func chatViewDidAppear() {
          chatContacts = chatContactRepository.getChatContacts()
    }
    
    func addContact(firstName: String, lastName: String) {
        let contact: ChatContact = ChatContact(firstName: firstName, lastName: lastName, isOnline: true)
        chatContactRepository.addContact(contact)
        chatContacts = chatContactRepository.getChatContacts()
    }
}
