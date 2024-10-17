//
//  ProfileViewModel.swift
//  ChatApp
//
//  Created by Tolga Telseren on 10/12/24.
//

import Foundation

class ProfileViewModel: ObservableObject {
    
    private var profileRepository: ProfileRepository = ProfileRepository()
    
    @Published var profileData: ProfileData = ProfileData(firstName: "", lastName: "", email: "", imageURL: "TolgaImages")
    
    func didAppear() {
        profileData = profileRepository.getProfile()
    }
}
