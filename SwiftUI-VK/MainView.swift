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
                    TableView()
                } label: {
                    EmptyView()
                }
            }
        }
    }
}
