//
//  FriendCell.swift
//  SwiftUI-VK
//
//  Created by Артур Дохно on 08.02.2022.
//

import SwiftUI

struct FriendCell: View {
    
    let friend: Friends
    
    var body: some View {
        HStack {
            AvatarViewBuilders {
                Image(self.friend.photo ?? "camera")
            }
            
            Text(self.friend.fullName)
            
            Spacer()
        }
    }
}

struct FriendCell_Previews: PreviewProvider {
    static var previews: some View {
        FriendCell(friend: Friends(firstName: "Artur", lastName: "Dokhno", photo: "camera"))
    }
}
