//
//  ContentView.swift
//  NavigationPractice
//
//  Created by Jeff on 11/21/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
               Journal()
        }.navigationTitle("My Journal")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
