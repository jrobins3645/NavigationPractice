//
//  ConfirmPass.swift
//  Learnity2
//
//  Created by Rayshon Gore-Willis on 11/18/22.
//

import SwiftUI

struct ConfirmPass: View {
    
    
    @State private var userName: String = ""
    @State private var firstName: String = ""
    var body: some View {
        ZStack {
            Image("Background2")
                .resizable()
                .ignoresSafeArea()
            VStack {
                Text("Please enter a password. ")
                    .font(.title)
                    .fontWeight(.regular)
                    .bold()
                    .padding(.top, 150.0)
                    .padding(.bottom, 50.0)
                
                HStack {
                    Text("Password:")
                        .font(Font.headline.weight(.bold))
                    TextField("Password", text: $userName)
                        .textFieldStyle(.roundedBorder)
                        .frame(width: 200, height: 25)
                        .multilineTextAlignment(.center)
                }
                HStack {
                    Text("Re-Enter Password:")
                        .font(Font.headline.weight(.bold))
                    TextField("Re-Enter Password", text: $firstName)
                        .textFieldStyle(.roundedBorder)
                        .frame(width: 200, height: 25)
                        .multilineTextAlignment(.center)
                }
            }
        }
    }
}
            
            struct ConfirmPass_Previews: PreviewProvider {
                static var previews: some View {
                    ConfirmPass()
                }
            }
