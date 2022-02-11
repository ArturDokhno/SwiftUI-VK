//
//  GroupView.swift
//  SwiftUI-VK
//
//  Created by Артур Дохно on 08.02.2022.
//

import SwiftUI

struct GroupView: View {
    
    @State private var groups: [Groups] = [
        Groups(name: "IOS & Swift", avatar: nil),
        Groups(name: "IOS & Swift", avatar: nil),
        Groups(name: "IOS & Swift", avatar: nil),
        Groups(name: "IOS & Swift", avatar: nil),
        Groups(name: "IOS & Swift", avatar: nil),
        Groups(name: "IOS & Swift", avatar: nil),
        Groups(name: "IOS & Swift", avatar: nil),
        Groups(name: "IOS & Swift", avatar: nil),
        Groups(name: "IOS & Swift", avatar: nil),
        Groups(name: "IOS & Swift", avatar: nil)
    ]
    
    var body: some View {
        List(groups) { group in
            GroupCell(group: group)
        }
        .listStyle(.plain)
    }
}

struct GroupView_Previews: PreviewProvider {
    static var previews: some View {
        GroupView()
    }
}
