//
//  View3.swift
//  NavigationPractice
//
//  Created by Jeff on 11/21/22.
//

import SwiftUI

struct View3: View {
    var body: some View {
        NavigationView {
            VStack{
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                NavigationLink(destination: DelayScreen()) {
                    Text("I'm a button")
                }
            }
        }
       
    }
}

struct View3_Previews: PreviewProvider {
    static var previews: some View {
        View3()
    }
}
