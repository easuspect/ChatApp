//
//  ChatListView.swift
//  ChatApp
//
//  Created by Tolga Telseren on 8/31/24.
//

import SwiftUI

struct ChatListView: View {
    var body: some View {
        VStack {
            List(ChatContactRepository().getChatContacts(), id: \.name) { chatContact in
                ChatRow(chatContact: chatContact)
            }
        }
    }
}

//#Preview {
//    ChatListView()
//}


struct ChatListView_Previews: PreviewProvider {
    static var previews: some View {
        ChatListView()
            .previewLayout(.sizeThatFits)
    }
}


