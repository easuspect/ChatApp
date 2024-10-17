//
//  ProfileRepository.swift
//  ChatApp
//
//  Created by Tolga Telseren on 10/12/24.
//

import Foundation

class ProfileRepository {
    
    private var profileData: ProfileData = ProfileData(firstName: "Tolga", lastName: "Telseren", email: "tolgatelseren@gmail.com", imageURL: "TolgaImages")
    
    
    func getProfile() -> ProfileData {
        return profileData
    }
    
    func changeProfileData(_ profileData: ProfileData) {
        self.profileData = profileData
    }
}