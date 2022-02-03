//
//  TabBarView.swift
//  SwiftUI-VK
//
//  Created by Артур Дохно on 03.02.2022.
//

import SwiftUI

struct TabBarView: View {
    
    @State private var selection = 0
    
    var body: some View {
        TabView(selection: $selection) {
            NavigationLink(destination: {
                FriendsView()
            }, label: {
                FriendsView()
            })
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
                .tag(0)
            
            NavigationLink(destination: {
                ViewBuilderContetn()
            }, label: {
                ViewBuilderContetn()
            })
                .tabItem {
                    Image(systemName: "bookmark.circle.fill")
                    Text("Bookmark")
                }
                .tag(1)
            
            NavigationLink(destination: {
                ViewModifierContent()
            }, label: {
                ViewModifierContent()
            })
                .tabItem {
                    Image(systemName: "video.circle.fill")
                    Text("Video")
                }
                .tag(2)
            
            Text("Profile Tab")
                .font(.system(size: 30, weight: .bold, design: .rounded))
                .tabItem {
                    Image(systemName: "person.crop.circle")
                    Text("Profile")
                }
                .tag(3)
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
