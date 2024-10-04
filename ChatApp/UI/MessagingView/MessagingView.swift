//
//  MessagingView.swift
//  ChatApp
//
//  Created by Tolga Telseren on 8/31/24.
//

import SwiftUI

struct MessagingView: View {
    
    @StateObject var messagingViewModel = MessagingViewModel()
    @State var messageToSend: String = ""
    
    
    var chatUuid: UUID = UUID()
    var currentUser: String = "Tolga"
    
    var body: some View {
        VStack {
                List(messagingViewModel.getMessages(chatUuid: chatUuid), id: \.uuid) { message in
                    if message.user == currentUser {
                        SendMessage(message: message)
                    } else {
                        ReceivedMessage(message: message)
                    }
                }
                HStack {
                    TextField("Send Message", text: $messageToSend)
                        .padding(10)
                        .cornerRadius(10)
                        .overlay {
                            RoundedRectangle(cornerRadius: 10.0)
                                .stroke(.gray, lineWidth: 1)
                        }
                    Button(action: { messagingViewModel.addMessage(content: messageToSend, chatUuid: chatUuid)}) {
                        Image(systemName: "paperplane.circle.fill")
                            .resizable()
                            .frame(width: 40, height: 40)
                    }
                }
                .padding(.horizontal, 16)
            }
        .onAppear(perform: { messagingViewModel.messagingViewDidAppaer() })
        }
    }
    
    struct MessagingView_Previews: PreviewProvider {
        static var previews: some View {
            MessagingView()
        }
    }
    
    struct SendMessage: View {
        var message: Message
        var body: some View {
            HStack {
                HStack {
                    Spacer()
                    VStack(alignment: .trailing) {
                        Text(message.content)
                        Text(message.user)
                            .font(.footnote)
                    }
                    Image("TolgaImages")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .cornerRadius(10)
                        .aspectRatio(contentMode: .fit)
                }
            }
        }
    }
    
    struct ReceivedMessage: View {
        var message: Message
        var body: some View {
            HStack {
                Image("DannyImages")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .cornerRadius(10)
                    .aspectRatio(contentMode: .fit)
                VStack(alignment: .leading) {
                    Text(message.content)
                    Text(message.user)
                        .font(.footnote)
                }
            }
        }
}


