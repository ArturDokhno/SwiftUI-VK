//
//  Friends.swift
//  SwiftUI-VK
//
//  Created by Артур Дохно on 08.02.2022.
//

import Foundation

class Friends: Identifiable {
    var id: UUID = UUID()
    let firstName: String
    let lastName: String
    let photo: String?
    
    var fullName: String {
        firstName + " " + lastName
    }
    
    init(firstName: String, lastName: String, photo: String?) {
        self.firstName = firstName
        self.lastName = lastName
        self.photo = photo
    }
}
