//
//  ChatRow.swift
//  ChatApp
//
//  Created by Tolga Telseren on 8/31/24.
//

import SwiftUI

struct ChatRow: View {
    var chatContact: ChatContact

    var body: some View {
        HStack {
            Image(systemName: "person.crop.circle")
            VStack(alignment: .leading) {
                Text(chatContact.name)
                if let message = chatContact.lastMessage {
                    Text(message)
                        .fontWeight(.light)
                }
            }
            Spacer()
            if chatContact.isOnline {
                Circle()
                    .frame(width: 8)
                    .background(Color.green)
            }
        }
        .padding([.all], 8)
    }
}

//#Preview {
//    ChatRow(chatContact: ChatContact(name: "Test User", lastMessage: "testing", isOnline: true))
//}

struct ChatRow_Previews: PreviewProvider {
    static var previews: some View {
        ChatRow(chatContact: ChatContact(name: "Test User", lastMessage: "testing", isOnline: true))
            .previewLayout(.sizeThatFits)
    }
}
