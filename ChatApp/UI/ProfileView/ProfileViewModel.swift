//
//  ProfileViewModel.swift
//  ChatApp
//
//  Created by Tolga Telseren on 10/12/24.
//

import Foundation

class ProfileViewModel: ObservableObject {
    
    private var profileRepository: ProfileRepository = ProfileRepository()
    
    @Published var profileData: ProfileData = ProfileData(firstName: "", lastName: "", email: "", phoneNumber: "", imageURL: "TolgaImages")
    
    func didAppear() {
        profileData = profileRepository.getProfile()
    }
    func updateProfileData(firstName: String, lastName: String, email: String, phoneNumber: String) {
        profileData = ProfileData(firstName: firstName, lastName: lastName, email: email, phoneNumber: phoneNumber, imageURL: profileData.imageURL)
    }
}
