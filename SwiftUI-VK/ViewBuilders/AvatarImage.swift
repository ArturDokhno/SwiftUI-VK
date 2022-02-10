//
//  AvatarViewBuilders.swift
//  SwiftUI-VK
//
//  Created by Артур Дохно on 08.02.2022.
//

import SwiftUI

struct AvatarViewBuilders: View {
    var content: Image
    
    init(@ViewBuilder content: () -> Image) {
        self.content = content()
    }
    
    var body: some View {
        content
            .resizable()
            .frame(width: 30, height: 30)
            .cornerRadius(15)
            .modifier(CircleShadow(shadowColor: .black,
                                   shadowRadius: 4,
                                   shadowOpacity: 0.7))
            .padding()
    }
}
