//
//  MainView.swift
//  SwiftUI-VK
//
//  Created by Артур Дохно on 03.02.2022.
//

import SwiftUI

struct MainView: View {
    
    @State var showMainScreen: Bool = false
    
    var body: some View {
        NavigationView {
            HStack {
                LoginView(showMainScreen: $showMainScreen)

                NavigationLink(isActive: $showMainScreen) {
                    TabView {
                        
                        NewsView()
                            .tabItem {
                                Image(systemName: "house")
                                Text("Home")
                            }
                        
                        FriendsView()
                            .tabItem {
                                Image(systemName: "person.2")
                                Text("Friends")
                            }
                        
                        GroupView()
                            .tabItem {
                                Image(systemName: "person.3")
                                Text("Communities")
                            }
                        
                    }
                    .navigationBarBackButtonHidden(true)
                } label: {
                    EmptyView()
                }
            }
        }
    }
}
