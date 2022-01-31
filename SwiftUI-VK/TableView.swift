//
//  TableView.swift
//  SwiftUI-VK
//
//  Created by Артур Дохно on 30.01.2022.
//

import SwiftUI

struct TableView: View {
    var body: some View {
        List(0..<10) { item in
            HStack {
                Image(systemName: "photo")
                    .padding()
                VStack(alignment: .leading) {
                    Text("Username")
                    Text("Group")
                        .font(.subheadline)
                        .foregroundColor(Color.gray)
                }
            }
        }
    }
}

struct TableView_Previews: PreviewProvider {
    static var previews: some View {
        TableView()
    }
}


