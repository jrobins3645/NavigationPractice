//
//  test.swift
//  NavigationPractice
//
//  Created by Jeff on 11/30/22.
//

import SwiftUI

struct test: View {
    
    @State private var isSaved: Bool = false
    @State private var angle: Double = 0

    
    var body: some View {
        VStack {
            
            Button(action: {
                angle += 45
            }) {
                Image(systemName: "hand.point.up").resizable().frame(width: 100, height: 125).foregroundColor(.black)
                    }
                    .rotationEffect(.degrees(angle))
                    .animation(.interpolatingSpring(mass: 1, stiffness: 1, damping: 0.5, initialVelocity: 10), value: angle)
                
            
            ZStack{
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Corner Radius@*/10.0/*@END_MENU_TOKEN@*/)
                    .frame(width: 360, height: 80)
                    .foregroundColor(Color(red: 0.944, green: 0.764, blue: 0.496))
                    .cornerRadius(20)
                
                VStack{
                    HStack {
                        Text("December 20th, 2022")
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .padding(.leading)
                        Spacer()
                    }
                    HStack {
                        Text("5:00 PM")
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .padding(.leading)
                        Spacer()
                    }
                }
            }.frame(width: 360)
            
            
            Button(action: {
                self.isSaved = true
            }) {
                Image(self.isSaved == false ? "saveButton" : "Button")
        }
        }
    }
}

struct test_Previews: PreviewProvider {
    static var previews: some View {
        test()
    }
}
