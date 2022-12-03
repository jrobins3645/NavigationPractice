//
//  Create your account.swift
//  Learnity
//
//  Created by Ernest Margariti on 11/18/22.
//

import SwiftUI

struct Create_your_account: View {
    
    @State private var userName: String = ""
    
    @State private var firstName: String = ""
    
    @State private var lastName: String = ""
    
    @State private var date: Date = Date()
    
    var body: some View {
        
        ZStack {
            Image("Background2")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                Text("Create your account")
                    .bold()
                    .font(.largeTitle)
                    .padding(.top, 150.0)
                    .padding(.bottom, 50.0)
                
                HStack {
                    Text("User Name:")
                        .font(Font.headline.weight(.bold))
                    TextField("User Name", text: $userName)
                        .textFieldStyle(.roundedBorder)
                        .frame(width: 200, height: 25)
                        .multilineTextAlignment(.center)
                }
                
                HStack {
                    Text("First Name:")
                        .font(Font.headline.weight(.bold))
                    TextField("First Name", text: $firstName)
                        .textFieldStyle(.roundedBorder)
                        .frame(width: 200, height: 25)
                        .multilineTextAlignment(.center)
                }
                
                HStack {
                    Text("Last Name:")
                        .font(Font.headline.weight(.bold))
                    TextField("Last Name", text: $lastName)
                        .textFieldStyle(.roundedBorder)
                        .frame(width: 200, height: 25)
                        .multilineTextAlignment(.center)
                }
                
                DatePicker(
                        "Date of Birth",
                        selection: $date,
                        displayedComponents: [.date]
                )
                .padding(.horizontal, 50.0)
                .font(Font.headline.weight(.bold))
                
                Button("Submit"){
                }
                .frame(width: 200, height: 50)
                .background(Color.black)
                .clipShape(Rectangle())
                .foregroundColor(.white)
                .cornerRadius(15)
                .padding(.top, 300.0)
                .bold()
                
            }
        }
    }
    
    struct Create_your_account_Previews: PreviewProvider {
        static var previews: some View {
            Create_your_account()
        }
    }
}
