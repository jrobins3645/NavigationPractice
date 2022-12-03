//
//  Youtube.swift
//  NavigationPractice
//
//  Created by Jeff on 12/1/22.
//

import SwiftUI

struct Youtube: View {
    
    @State var text: String = ""
    
    var body: some View {
        NavigationView {
            List {
                Section (header: Text("New Journal Entry")) {
                    HStack {
                        TextField("Create new entry", text: $text)
                        Button(action: {
                            
                        }, label: {
                            Text("Save")
                        })
                        
                    }
                    
                }
                Section {
                    Text("abc")
                }
            }
            .navigationTitle("Journal Entries")
        }
    }
}

struct Youtube_Previews: PreviewProvider {
    static var previews: some View {
        Youtube()
    }
}
