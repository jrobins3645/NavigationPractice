//
//  TestingThings.swift
//  NavigationPractice
//
//  Created by Jeff on 11/28/22.
//

import SwiftUI

struct DelayScreen: View {
    
    @State var showSplashScreen = true
    
    var body: some View {
        Group {
            if showSplashScreen {
                Footer()
            } else {
                Container()
            }
        }
        .onAppear() {
            Timer.scheduledTimer(withTimeInterval: 3, repeats: false) { (_) in
                withAnimation {
                    self.showSplashScreen = false
                }
            }
        }
    }
}

struct DelayScreen_Previews: PreviewProvider {
    static var previews: some View {
        DelayScreen()
    }
}
