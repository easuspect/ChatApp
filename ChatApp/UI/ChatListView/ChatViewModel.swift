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
    
    func addContact(contactName: String) {
        let contact: ChatContact = ChatContact(name: contactName, isOnline: true)
        chatContactRepository.addContact(contact)
        chatContacts = chatContactRepository.getChatContacts()
    }
}
