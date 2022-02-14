//
//  Content.swift
//  SwiftUI-VK
//
//  Created by Артур Дохно on 14.02.2022.
//

import SwiftUI

struct Content: View {
    var body: some View {
        
        GeometryReader { proxy in
            
            let size =  proxy.size
            let bottonEdge = proxy.safeAreaInsets.bottom
            
            Home(size: size, bottonEdge: bottonEdge)
                .ignoresSafeArea(.all, edges: .bottom )
        }
    }
}

struct Content_Previews: PreviewProvider {
    static var previews: some View {
        Content()
    }
}
