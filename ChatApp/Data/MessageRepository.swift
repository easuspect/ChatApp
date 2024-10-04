//
//  MessageRepository.swift
//  ChatApp
//
//  Created by Tolga Telseren on 8/31/24.
//
import UIKit
import Foundation

class MessageRepository {
    private var messages: [Message] = []
    
    func getMessages() -> [Message] {
        return messages
    }
    func addMessages(_ message: Message) {
        messages.append(message)
    }
    func deleteMessage(_ message: Message) {
        messages.removeAll(where: { $0.uuid == message.uuid })
    }
}

