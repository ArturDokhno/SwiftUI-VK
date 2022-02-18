//
//  Home.swift
//  SwiftUI-VK
//
//  Created by Артур Дохно on 14.02.2022.
//

import SwiftUI

struct Home: View {
    
    @State var currentTab: Tab = .Home
    
    init(size: CGSize, bottonEdge: CGFloat) {
        self.size = size
        self.bottonEdge = bottonEdge
        UITabBar.appearance().isHidden = true
    }
    
    @Namespace var animation
    var size: CGSize
    var bottonEdge: CGFloat
    
    var body: some View {
        
        ZStack(alignment: .bottom) {
            
            TabView(selection: $currentTab) {
                
                Text("Home")
                    .tag(Tab.Home)
                    .frame(width: .infinity, height: .infinity)
                    .background(Color.black.opacity(0.04).ignoresSafeArea())
                
                Text("Settings")
                    .tag(Tab.Settings)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                
                .background(Color.black.opacity(0.04).ignoresSafeArea())
            }
            
            TabBarCustom(animation: animation,size: size, bottonEngle: bottonEdge,currentTab: $currentTab)
                .background(Color.white)
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Content()
    }
}


enum Tab: String, CaseIterable {
    case Home = "house.fill"
    case Settings = "gearshape"
}
