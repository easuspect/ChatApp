//
//  ProfileView.swift
//  ChatApp
//
//  Created by Tolga Telseren on 10/12/24.
//

import SwiftUI

struct ProfileView: View {
    
    @StateObject var profileViewModel: ProfileViewModel = ProfileViewModel()
    @State private var name: String = ""
    @State private var emailAddress: String = ""

    
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
                        .frame(width: 50, height: 50)
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
                        TextField("Name", text: $name)
                            .padding(.vertical, 32)
                        Spacer()
                    }
//                    HStack {
//                        Text(profileViewModel.profileData.email)
//                        // update ui,
//                        Spacer()
//
//                    }
                    HStack {
                        TextField("Email Address", text: $emailAddress)
                        
                    }
                }
            }
            Spacer()
        }
        .padding(16)
        .onAppear { profileViewModel.didAppear() }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
