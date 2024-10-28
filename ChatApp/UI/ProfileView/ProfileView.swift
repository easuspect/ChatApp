//
//  ProfileView.swift
//  ChatApp
//
//  Created by Tolga Telseren on 10/12/24.
//

import SwiftUI

struct ProfileView: View {
    
    @StateObject var profileViewModel: ProfileViewModel = ProfileViewModel()
    @State private var enteredName: String = ""
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    @State private var emailAddress: String = ""
    @State private var phoneNumber: String = ""

    
    var body: some View {
        VStack(spacing: 64){
            HStack{
                
                NavigationLink(destination: {}, label: {
                    
                    Text("Edit Profile")
                        .foregroundColor(.blue)
                    
                })
            }
            
            VStack(spacing: 32) {
                HStack {
                    Image(profileViewModel.profileData.imageURL)
                        .resizable()
                        .frame(alignment: .leading)
                    // check aspect ratio
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 75, height: 75)
                        .clipShape(Circle())
                    Text("Enter your name and add an optional profile Picture")
                    Spacer()
                }
                
                VStack(spacing: 16) {
//                    HStack {
//                        Text("\(profileViewModel.profileData.firstName) \(profileViewModel.profileData.lastName)")
//                            .padding(.vertical, 32)
//                        Spacer()
//                    }
                    HStack {
                        TextField("First Name", text: $firstName)
                            .padding(.vertical, 32)
                        Spacer()
                    }
                    HStack {
                        TextField("Last Name", text: $lastName)
                            .padding(.vertical, 32)
                        Spacer()
                    }
//                    HStack {
//                        Text(profileViewModel.profileData.email)
//                        // update ui,
//                        Spacer()
//                    }
                    HStack {
                        TextField("Phone number", text: $phoneNumber)
                        Spacer()
                    }
                    
                    HStack {
                        TextField("Email Address", text: $emailAddress)
                            .padding(.vertical, 32)
                        
                    }
                    Spacer()
                    Button(action: {
                        profileViewModel.updateProfileData(firstName: firstName, lastName: lastName, email: emailAddress, phoneNumber: phoneNumber)
                    }) {
                        Text("Save Profile")
                            .frame(width: 200, height: 40)
                            .foregroundColor(.white)
                            .background(Color.blue)
                            .cornerRadius(10)
                    }
                }
            }
            Spacer()
        }
        .padding(16)
        .onAppear { profileViewModel.didAppear()
        }
        .onChange(of: profileViewModel.profileData, perform:{newValue in
            firstName = newValue.firstName
            lastName = newValue.lastName
            phoneNumber = newValue.phoneNumber
            emailAddress = newValue.email
        })
        
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
