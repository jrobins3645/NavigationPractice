//
//  View2.swift
//  NavigationPractice
//
//  Created by Jeff on 11/21/22.
//

import SwiftUI

struct View2: View {
    var body: some View {
        VStack {
            Spacer()
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Image("puppypic")
            NavigationLink(destination: Destination2()){
                Text("Click Me")
            }
            Spacer()
            Footer()
        }
       
    }
}

struct View2_Previews: PreviewProvider {
    static var previews: some View {
        View2()
    }
}
