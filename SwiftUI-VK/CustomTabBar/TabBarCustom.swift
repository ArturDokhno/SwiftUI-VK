//
//  TabBarCustom.swift
//  SwiftUI-VK
//
//  Created by Артур Дохно on 14.02.2022.
//

import SwiftUI

struct TabBarCustom: View {
    var animation: Namespace.ID
    
    var size: CGSize
    var bottonEngle: CGFloat
    
    @Binding var currentTab: Tab
    var body: some View {
       
        HStack(spacing: 0) {
            ForEach(Tab.allCases, id: \.rawValue) { tab in
                
                TabButton(tab: tab, animation: animation, currentTab: $currentTab) { pressedTab in
                    
                    withAnimation(.spring()) {
                        currentTab == pressedTab
                    }
                }
            }
        }
        .background(
            ZStack {
                Rectangle()
                    .fill(Color.purple)
                    .frame(width: 45, height: 45)
                    .offset(y: 40)
                Circle()
                    .fill(.white)
                    .frame(width: 45, height: 45)
                    .offset(x: 27, y: 36)
                Circle()
                    .fill(.white)
                    .frame(width: 45, height: 45)
                    .offset(x: -27, y: 36)
            }
                .offset(x: getStartOffSet())
                .offset(x: getOffSet())
            , alignment: .leading
        )
        .padding(.horizontal, 15)
        .padding(.top, 7)
        .padding(.bottom, bottonEngle == 0 ? 15: bottonEngle)
    }
    
    func getStartOffSet() -> CGFloat {
        let reduced = (size.width - 30) / 4
        let center = (reduced - 45) / 2
        return center
    }
    
    func getOffSet() ->  CGFloat {
        let reduced = (size.width - 30) / 4
        let index = Tab.allCases.firstIndex { checkTab in
            return checkTab == currentTab
        } ?? 0
        return reduced * CGFloat(index)
    }
}

struct TabBarCustom_Previews: PreviewProvider {
    static var previews: some View {
        Content()
    }
}

struct TabButton: View {
    var tab: Tab
    var animation: Namespace.ID
    @Binding var currentTab: Tab
    var onTap: (Tab)->()
    
    var body: some View {
        
        Image(systemName: tab.rawValue)
            .foregroundColor(currentTab == tab ? .white : .gray)
            .frame(width: 45, height: 45)
            .background(
                
                ZStack {
                    
                    if currentTab == tab {
                        Circle()
                            .fill(.purple)
                            .matchedGeometryEffect(id: "TAB", in: animation)
                    }
                }
             )
            .frame(maxWidth: .infinity)
            .contentShape(Rectangle())
            .onTapGesture {
                onTap(tab)
            }
    }
}
