//
//  Destination1.swift
//  NavigationPractice
//
//  Created by Jeff on 11/21/22.
//

import SwiftUI

struct Destination1: View {
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    var body: some View {
        VStack {
            Text("The Red Wings are awesome")
            
        }
        .navigationTitle("Mindfull")
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: Button(action : {
            self.mode.wrappedValue.dismiss()
        }){
            Image(systemName: "arrow.left.circle.fill").resizable().foregroundColor(.indigo).frame(width: 40, height: 40)
        })
    }
}

struct Destination1_Previews: PreviewProvider {
    static var previews: some View {
        Destination1()
    }
}
