//
//  LoginView.swift
//  SwiftUI-VK
//
//  Created by Артур Дохно on 22.01.2022.
//

import SwiftUI

let lightGreyColor = Color(red: 239.0/255.0,
                           green: 243.0/255.0,
                           blue: 244.0/255.0)

let storedUsetname = "Artur"
let storedPassword = "1234"

struct LoginView: View {
    
    @State var username: String = ""
    @State var password: String = ""
    
    @State var authenticationDidfail: Bool = false
    @State var authenticationDidSucceed: Bool = false
    
    var body: some View {
        ZStack {
            VStack {
                HelloText()
                VKImage()
                UsernameTextField(username: $username)
                PasswordSecureField(password: $password)
                
                if authenticationDidfail {
                    Text("Information not correct. Try again.")
                        .offset(y: -10)
                        .foregroundColor(.red)
                }
                
                Button {
                    if self.username == storedUsetname && self.password == storedPassword {
                        self.authenticationDidSucceed = true
                        self.authenticationDidfail = false
                    } else {
                        self.authenticationDidfail = true
                        self.authenticationDidSucceed = false
                    }
                } label: {
                    LoginButton()
                }
            }
            
            .padding()
            if authenticationDidSucceed {
                Text("Login succeded!")
                    .font(.headline)
                    .foregroundColor(.green)
                    .animation(Animation.default)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
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
    var body: some View {
        Text("Log In")
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 220, height: 60)
            .background(.black)
            .cornerRadius(35)
    }
}

struct UsernameTextField: View {
    
    @Binding var username: String
    
    var body: some View {
        TextField("Username", text: $username)
            .padding()
            .background(lightGreyColor)
            .cornerRadius(10.0)
            .padding(.bottom, 20)
    }
}

struct PasswordSecureField: View {
    
    @Binding var password: String
    
    var body: some View {
        SecureField("Password", text: $password)
            .padding()
            .background(lightGreyColor)
            .cornerRadius(10.0)
            .padding(.bottom, 20)
    }
}
