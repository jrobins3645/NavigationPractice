//
//  TabNavigation.swift
//  NavigationPractice
//
//  Created by Jeff on 11/21/22.
//

import SwiftUI

struct TabNavigation: View {
    var body: some View {
        VStack {
            NavigationView {
                TabView {
                    Destination1().tabItem {
                        Image("mymood")
                    }
                    View2().tabItem {
                        Image("map")
                    }
                    View3().tabItem {
                        Label("View3", systemImage: "scribble")
                    }
                    ConfirmPass().tabItem {
                        Label("Confrim", systemImage: "person")
                    }
                    
                }
            }
        }.navigationBarTitleDisplayMode(.inline)
            .toolbar { // <2>
                ToolbarItem(placement: .principal) { // <3>
                    VStack {
                        Text("Mindfull").font(.headline).italic()
                    }
                }
            }
    }
}

struct TabNavigation_Previews: PreviewProvider {
    static var previews: some View {
        TabNavigation()
    }
}
