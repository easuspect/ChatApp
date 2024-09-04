//
//  MessagingView.swift
//  ChatApp
//
//  Created by Tolga Telseren on 8/31/24.
//

import SwiftUI

struct MessagingView: View {
    
    @State var messageToSend: String = ""
    var currentUser: String = "Tolga"
    
    var body: some View {
            VStack {
                List(MessageRepository().getMessages(), id: \.uuid) { message in
                    if message.user == currentUser {
                        SendMessage(message: message)
                    } else {
                        ReceivedMessage(message: message)
                    }
                }
                HStack {
                    TextField("Send Message", text: $messageToSend)
                        .frame(width: 280,height: 40)
                        .border(.gray)
                        .cornerRadius(5)
                    Button(action: { }) {
                        Image(systemName: "paperplane.circle.fill")
                            .resizable()
                            .frame(width: 40, height: 40)
                    }
                }
                .padding(.horizontal, 16)
            }
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
                Spacer(minLength: 240)
                Image("TolgaImages")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .cornerRadius(10)
                    .aspectRatio(contentMode: .fit)
                
            Spacer()
                VStack(alignment: .trailing) {
                    Text(message.content)
                    Text(message.user)
                        .font(.footnote)
                }
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


