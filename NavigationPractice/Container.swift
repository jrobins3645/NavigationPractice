//
//  Container.swift
//  NavigationPractice
//
//  Created by Jeff on 11/23/22.
//

import SwiftUI

struct Container: View {
    var body: some View {
        ZStack {
            Color.indigo.ignoresSafeArea()
            
            VStack {
                HStack {
                    Image(systemName: "person.fill")
                        .resizable()
                        .frame(width: 75, height: 75)
                    Image(systemName: "person.fill")
                        .resizable()
                        .frame(width: 75, height: 75)
                    Image(systemName: "person.fill")
                        .resizable()
                        .frame(width: 75, height: 75)
                }
                HStack {
                    Image(systemName: "person.fill")
                        .resizable()
                        .frame(width: 75, height: 75)
                    Image(systemName: "person.fill")
                        .resizable()
                        .frame(width: 75, height: 75)
                }
            }
        }
    }
}

struct Container_Previews: PreviewProvider {
    static var previews: some View {
        Container()
    }
}
