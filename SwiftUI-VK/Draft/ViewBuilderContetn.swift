//
//  ViewBuilderContetn.swift
//  SwiftUI-VK
//
//  Created by Артур Дохно on 31.01.2022.
//

import SwiftUI

struct ViewBuilderContetn: View {
    var body: some View {
        NavigationView{
            VStack {
                AlertView {
                    Image(systemName: "exclamationmark.shield")
                        .resizable()
                        .frame(width: 65, height: 65)
                    Text("Пользовательское оповещение с View Builders")
                }
            }
            .navigationTitle("View Builders")
        }
    }
}

struct AlertView<Content: View>: View {
    let content: Content
    
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    var body: some View {
        VStack {
            content
                .padding()
            
            Divider()
            
            HStack {
                Button {
                    // action
                } label: {
                    Text("Cancel")
                        .bold()
                        .foregroundColor(.red)
                }
                Spacer()
                Button {
                    // action
                } label: {
                    Text("Confirm")
                        .bold()
                        .foregroundColor(.green)
                }
            }
            .padding()
        }
        .frame(width: UIScreen.main.bounds.size.width/2)
        .background(.blue)
        .cornerRadius(7)
        .padding()
    }
}

struct ViewBuilderContetn_Previews: PreviewProvider {
    static var previews: some View {
        ViewBuilderContetn()
    }
}
