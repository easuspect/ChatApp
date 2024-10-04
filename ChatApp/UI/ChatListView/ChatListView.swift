//
//  ChatListView.swift
//  ChatApp
//
//  Created by Tolga Telseren on 8/31/24.
//

import SwiftUI

struct ChatListView: View {
    
    @StateObject var chatViewModel: ChatViewModel = ChatViewModel()
    @State private var isShowingChatListView = false
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button(action: { isShowingChatListView = true })
                {
                    Image(systemName: "person.badge.plus" )
                        .resizable()
                        .frame(width:40, height:40)
                }
            }
            .padding(.horizontal)
            .sheet(isPresented: $isShowingChatListView) {
              //  ChatListView()
                AddContactView()
                //create new addcontact view here
            }
                
                .padding(.horizontal, 24)
            List(chatViewModel.chatContacts, id: \.uuid) { chatContact in
                NavigationLink(destination: { MessagingView(chatUuid: chatContact.uuid) }, label: { ChatRow(chatContact: chatContact) })
            }
        }
        .onAppear(perform: { chatViewModel.chatViewDidAppear() })
        
    }

    struct ChatListView_Previews: PreviewProvider {
        static var previews: some View {
            ChatListView()
                .previewLayout(.sizeThatFits)
        }
    }
}

