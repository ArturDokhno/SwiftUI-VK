//
//  GroupCell.swift
//  SwiftUI-VK
//
//  Created by Артур Дохно on 08.02.2022.
//

import SwiftUI

struct GroupCell: View {
    
    let group: Groups
    
    var body: some View {
        HStack {
            AvatarViewBuilders {
                Image(self.group.avatar ?? "camera")
            }
            
            Text("\(self.group.name)")
            
            Spacer()
        }
    }
}

struct GroupCell_Previews: PreviewProvider {
    static var previews: some View {
        GroupCell(group: Groups(name: "Хабр", avatar: nil))
    }
}
