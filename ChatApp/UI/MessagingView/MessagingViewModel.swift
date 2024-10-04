//
//  MessagingViewModel.swift
//  ChatApp
//
//  Created by Tolga Telseren on 9/16/24.
//

import Foundation

class MessagingViewModel: ObservableObject {
    private var messageRepository: MessageRepository = MessageRepository()
    @Published var messages: [Message] = []
    
    func getMessages(chatUuid: UUID) -> [Message] {
        return messages.filter({ $0.chatUuid == chatUuid })
    }
    
    func messagingViewDidAppaer() {
        messages = messageRepository.getMessages()
    }
    
    func addMessage(content: String, chatUuid: UUID) {
        let message: Message = Message(user: "Tolga", content: content, timeStamp: Date(), chatUuid: chatUuid)
        messageRepository.addMessages(message)
        messages = messageRepository.getMessages()
    }
}
