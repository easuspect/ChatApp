//
//  MessageRepository.swift
//  ChatApp
//
//  Created by Tolga Telseren on 8/31/24.
//
import UIKit
import Foundation

class MessageRepository {
    func getMessages() -> [Message] {
        let chatUuid = UUID()
        return [Message(user: "Tolga", content: "Hi", timeStamp: Date(), chatUuid: chatUuid, chatImage: UIImage(named: "TolgaImages")), Message(user: "Danny", content: "Hello", timeStamp: Date(), chatUuid: chatUuid, chatImage: UIImage(named: "DannyImages"))]
    }
}

