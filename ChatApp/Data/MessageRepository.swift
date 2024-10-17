//
//  MessageRepository.swift
//  ChatApp
//
//  Created by Tolga Telseren on 8/31/24.
//
import UIKit
import Foundation

class MessageRepository {
    
    private var messages: [Message]
    private var didReceviedMessage: (Message) -> Void
    
    init(didReceviedMessage: @escaping (Message) -> Void) {
        self.messages = []
        self.didReceviedMessage = didReceviedMessage
    }
    
    func getMessages() -> [Message] {
        return messages
    }
    func addMessages(_ message: Message) {
        messages.append(message)
        Task {
            Thread.sleep(forTimeInterval: 5)
            let message = Message(user: "Danny", content: message.content, timeStamp: Date(), chatUuid: message.chatUuid)
            messages.append(message)
            didReceviedMessage(message)
        }
    }
    func deleteMessage(_ message: Message) {
        messages.removeAll(where: { $0.uuid == message.uuid })
    }
}

