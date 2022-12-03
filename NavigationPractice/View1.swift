//
//  View1.swift
//  NavigationPractice
//
//  Created by Jeff on 11/21/22.
//

import SwiftUI

struct View1: View {
    var body: some View {
        ZStack {
            Color.indigo
            VStack {
                Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
                    
                }
                Spacer()
                NavigationLink(destination: Destination1()){
                    Image("wings")
                }
                Spacer()
                Footer()
            }.navigationTitle("Livewell")
        }
    }
}

struct View1_Previews: PreviewProvider {
    static var previews: some View {
        View1()
    }
}
