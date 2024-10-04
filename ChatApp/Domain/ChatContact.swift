//
//  ChatContact.swift
//  ChatApp
//
//  Created by Tolga Telseren on 8/31/24.
//

import Foundation

struct ChatContact {
    var uuid: UUID = UUID()
    var name: String
    var lastMessage: String?
    var isOnline: Bool
}

