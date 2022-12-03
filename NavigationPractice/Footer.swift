//
//  Footer.swift
//  NavigationPractice
//
//  Created by Jeff on 11/28/22.
//

import SwiftUI

struct Footer: View {
    var body: some View {
        HStack {
            NavigationLink(destination: View1()){
                Text("MyMood")
                    .padding(.horizontal)
            }
            NavigationLink(destination: View2()){
                Text("map")
                    .padding(.horizontal)
            }
            NavigationLink(destination: View3()){
                Text("account")
                    .padding(.horizontal)
            }
            NavigationLink(destination: Container()){
                Text("MyMood")
                    .padding(.horizontal)
            }
        }
        .frame(width: 400, height: 75)
        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.white/*@END_MENU_TOKEN@*/)
    }
}

struct Footer_Previews: PreviewProvider {
    static var previews: some View {
        Footer()
    }
}
