//
//  Group.swift
//  SwiftUI-VK
//
//  Created by Артур Дохно on 08.02.2022.
//

import Foundation

class Groups: Identifiable {
    var id: UUID = UUID()
    let name: String
    let avatar: String?
    
    init(name: String, avatar: String?) {
        self.name = name
        self.avatar = avatar
    }
}
