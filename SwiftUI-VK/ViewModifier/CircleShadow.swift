//
//  CircleShadow.swift
//  SwiftUI-VK
//
//  Created by Артур Дохно on 08.02.2022.
//

import SwiftUI

struct CircleShadow: ViewModifier {
    
    let shadowColor: Color
    let shadowRadius: CGFloat
    let shadowOpacity: Double
    
    func body(content: Content) -> some View {
        content
            .background(Circle()
                            .fill(Color.white)
                            .shadow(color: shadowColor.opacity(shadowOpacity), radius: shadowRadius))
        
    }
}

