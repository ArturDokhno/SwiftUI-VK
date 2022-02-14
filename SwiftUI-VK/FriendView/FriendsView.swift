//
//  FriendsView.swift
//  SwiftUI-VK
//
//  Created by Артур Дохно on 30.01.2022.
//

import SwiftUI

struct FriendsView: View {
    
    @State var friends: [Friends] = [
        Friends(firstName: "Artur", lastName: "Dokhno", photo: nil),
        Friends(firstName: "Artur", lastName: "Dokhno", photo: nil),
        Friends(firstName: "Artur", lastName: "Dokhno", photo: nil),
        Friends(firstName: "Artur", lastName: "Dokhno", photo: nil),
        Friends(firstName: "Artur", lastName: "Dokhno", photo: nil),
        Friends(firstName: "Artur", lastName: "Dokhno", photo: nil),
        Friends(firstName: "Artur", lastName: "Dokhno", photo: nil),
        Friends(firstName: "Artur", lastName: "Dokhno", photo: nil),
        Friends(firstName: "Artur", lastName: "Dokhno", photo: nil),
        Friends(firstName: "Artur", lastName: "Dokhno", photo: nil)
    ]
    
    var body: some View {
        NavigationView {
            List(friends) { friend in
                NavigationLink(destination: FriendPhotoView()) {
                    FriendCell(friend: friend)
                }
            }
            .listStyle(.plain)
            .navigationBarTitle("Friends")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct FriendsView_Previews: PreviewProvider {
    static var previews: some View {
        FriendsView()
    }
}


