//
//  LoginView.swift
//  SwiftUI-VK
//
//  Created by Артур Дохно on 22.01.2022.
//

import SwiftUI
import Combine

let lightGreyColor = Color(red: 239.0/255.0,
                           green: 243.0/255.0,
                           blue: 244.0/255.0)

struct LoginView: View {
    @State var username: String = ""
    @State var password: String = ""
    @State var showAlert: Bool = false
    @State private var shouldShowLogo: Bool = true
    @Binding var showMainScreen: Bool
    
    
    private let keyboardIsOnPublisher = Publishers.Merge(
        NotificationCenter.default.publisher(for: UIResponder.keyboardWillChangeFrameNotification)
            .map { _ in true },
        NotificationCenter.default.publisher(for: UIResponder.keyboardWillHideNotification)
            .map { _ in false }
    )
        .removeDuplicates()
    
    var body: some View {
        ScrollView {
            VStack {
                if shouldShowLogo {
                    HelloText()
                    VKImage()
                }
                TextFiedls(isSecure: false, text: $username)
                TextFiedls(isSecure: true, text: $password)
                LoginButton(username: $username,
                            password: $password,
                            showAlert: $showAlert,
                            showMainScreen: $showMainScreen)
            }
            .padding()
        }
        .onReceive(keyboardIsOnPublisher) { isKeyboardOn in
            withAnimation(Animation.easeInOut(duration: 0.5)) {
                self.shouldShowLogo = !isKeyboardOn
            }
        }
        .alert(isPresented: $showAlert) {
            Alert(title: Text("Error"),
                  message: Text("Incorect data"),
                  dismissButton: .cancel())
        }
        .onTapGesture {
            UIApplication.shared.endEditing()
        }
    }
}

struct HelloText: View {
    var body: some View {
        Text("Hello you!")
            .font(.largeTitle)
            .fontWeight(.semibold)
            .padding(.bottom, 20)
    }
}

struct VKImage: View {
    var body: some View {
        Image("vk")
            .resizable()
            .frame(width: 150, height: 150)
            .padding(.bottom, 70)
    }
}

struct LoginButton: View {
    @Binding var username: String
    @Binding var password: String
    @Binding var showAlert: Bool
    @Binding var showMainScreen: Bool
    
    var body: some View {
        Button {
            if username == "A" && password == "a" {
                showMainScreen = true
            } else {
                showAlert = true
            }
        } label: {
            Text("Log In")
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .frame(width: 220, height: 60)
                .background(.black)
                .cornerRadius(35)
        }
    }
}

struct TextFiedls: View {
    let isSecure: Bool
    @Binding var text: String
    
    var body: some View {
        Group {
            if isSecure {
                SecureField("Password", text: $text)
            } else {
                TextField("Username", text: $text)
            }
        }
        .padding()
        .background(lightGreyColor)
        .cornerRadius(10.0)
        .padding(.bottom, 20)
    }
}

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(showMainScreen: .constant(false))
    }
}
