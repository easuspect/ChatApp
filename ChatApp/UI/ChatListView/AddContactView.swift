//
//  AddContactView.swift
//  ChatApp
//
//  Created by Tolga Telseren on 10/3/24.
//

import SwiftUI

struct AddContactView: View {
    
    @State var firstName: String = ""
    @State var lastName: String = ""
    @State var chatList: [String] = []
    
    var body: some View {
        VStack(spacing: 20) {
            TextField("First Name", text: $firstName)
                .frame(width: 250)
                .padding(10)
                .cornerRadius(10)
                .overlay {
                    RoundedRectangle(cornerRadius: 10.0)
                        .stroke(.gray, lineWidth: 1)
                }
            
            TextField("Last Name", text: $lastName)
                .frame(width: 250)
                .padding(10)
                .cornerRadius(10)
                .overlay {
                    RoundedRectangle(cornerRadius: 10.0)
                        .stroke(.gray, lineWidth: 1)
                }
            
            // add button here
            Button(action: {
                
                if !firstName.isEmpty && !lastName.isEmpty {
                    chatList.append("\(firstName) \(lastName)")
                                        firstName = ""  // Clear the text fields
                                        lastName = ""
                }
                // Button action goes here
                print("Button Pressed")
            }) {
                Text("Add Contact")
                    .frame(width: 200, height: 40)
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
        }
        .padding()
    }
}

struct AddContactView_Previews: PreviewProvider {
    static var previews: some View {
        AddContactView()
    }
}


