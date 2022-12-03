//
//  Login.swift
//  NavigationPractice
//
//  Created by Jeff on 11/21/22.
//

import SwiftUI

struct Login: View {
    
    @State private var username: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack{
            TextField("username", text: $username)
            SecureField("Password", text: $password)
            TextField("username", text: $username)
            SecureField("Password", text: $password)
            TextField("username", text: $username)
            SecureField("Password", text: $password)
            NavigationLink(destination: TabNavigation().navigationBarBackButtonHidden(true)){
                Text("Login")
            }
            Link("this is a link", destination: URL(string: "https://www.google.com")!)
        }
       
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
