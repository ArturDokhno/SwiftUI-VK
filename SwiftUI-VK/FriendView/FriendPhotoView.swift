//
//  FriendPhotoView.swift
//  SwiftUI-VK
//
//  Created by Артур Дохно on 08.02.2022.
//

import SwiftUI

struct FriendPhotoView: View {
    var body: some View {
        Grid()
    }
}

struct FriendPhotoView_Previews: PreviewProvider {
    static var previews: some View {
        FriendPhotoView()
    }
}

struct Grid: View {
    var columns: [GridItem] = [GridItem(.adaptive(minimum: 100))]
    var body: some View {
        VStack {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(1..<12) { photo in
                        Image("img\(photo)")
                            .resizable()
                            .frame(height: 100)
                    }
                }
            }
        }
        .navigationBarTitle("Photo gallery")
        .navigationBarTitleDisplayMode(.inline)
        .padding()
    }
}
