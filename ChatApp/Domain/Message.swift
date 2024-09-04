//
//  Messages.swift
//  ChatApp
//
//  Created by Tolga Telseren on 8/31/24.
//
import UIKit
import Foundation

struct Message {
    var uuid: UUID = UUID()
    var user: String
    var content: String
    var timeStamp: Date
    var chatUuid: UUID
    var chatImage: UIImage?
}
