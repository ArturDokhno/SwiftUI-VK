//
//  ViewModifier.swift
//  SwiftUI-VK
//
//  Created by Артур Дохно on 31.01.2022.
//

import SwiftUI

struct ViewModifierContent: View {
    var body: some View {
        NavigationView {
            VStack {
                Image(systemName: "house")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .iconStyle()
                
                Text("Custom modifier")
                    .myLabelStyle()
            }
            .navigationTitle("Custom Modifier")
        }
    }
}

extension View {
    func iconStyle() -> some View {
        self.modifier(IconStyle())
    }
    
    func myLabelStyle() -> some View {
        self.modifier(LabelStyle())
    }
}

struct LabelStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 24,
                          weight: .bold,
                          design: .default))
            .multilineTextAlignment(.center)
            .foregroundColor(.blue)
    }
}

struct IconStyle: ViewModifier {
    func body(content: Content) -> some View {
            content
            .foregroundColor(.pink)
            .frame(width: 100,
                   height: 100,
                   alignment: .center)
    }
}

struct ViewModifierContent_Previews: PreviewProvider {
    static var previews: some View {
        ViewModifierContent()
    }
}
