//
//  MessagingViewModel.swift
//  ChatApp
//
//  Created by Tolga Telseren on 9/16/24.
//

import Foundation

class MessagingViewModel: ObservableObject {
    
    private var messageRepository: MessageRepository = MessageRepository(didReceviedMessage: { message in
        
    })
    @Published var messages: [Message] = []
    
    func getMessages(chatUuid: UUID) -> [Message] {
        return messages.filter({ $0.chatUuid == chatUuid })
    }
    
    func messagingViewDidAppaer() {
        messageRepository = MessageRepository(didReceviedMessage: { message in
            self.messages.append(message)
        })
        messages = messageRepository.getMessages()
    }
    
    func addMessage(content: String, chatUuid: UUID) {
        let message: Message = Message(user: "Tolga", content: content, timeStamp: Date(), chatUuid: chatUuid)
        messageRepository.addMessages(message)
        messages = messageRepository.getMessages()
    }
}
